using Microsoft.EntityFrameworkCore.Migrations;
using System.Text;

#nullable disable

namespace Web.Migrations
{
    /// <inheritdoc />
    public partial class spDecreaseOfPosition : Migration
    {
        /// <inheritdoc />
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            StringBuilder sb = new();
            sb.Append(@" CREATE PROCEDURE spDecreaseOfPosition @year int AS SELECT s.Title,
    a.Name,
    s.ReleaseYear,
    ThisYear = (
        SELECT p.Place
        FROM Position AS p
        WHERE p.Year = @year
            AND p.SongId = s.SongId
        ),
    OldYear = (
        SELECT p.Place
        FROM Position AS p
        WHERE p.Year = @year - 1
            AND p.SongId = s.SongId
        ),
    Decreased = (
        SELECT p.Place - (
                SELECT p1.place
                FROM Position AS p1
                WHERE p1.Year = @year -1
                    AND p1.SongId = s.SongId
                )
        WHERE p.SongId = s.SongId
        )
FROM Song AS s
JOIN Artist AS a ON s.ArtistId = a.ArtistId
JOIN Position AS p ON p.SongId = s.SongId
WHERE p.Year = @year
    AND (
        SELECT p.Place - (
                SELECT p1.place
                FROM Position AS p1
                WHERE p1.Year = @year - 1 
                    AND p1.SongId = s.SongId
                )
        WHERE p.SongId = s.SongId
        ) > 0");

            migrationBuilder.Sql(sb.ToString());
        }

        /// <inheritdoc />
        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.Sql(@"DROP PROCEDURE spDecreaseOfPosition");
        }
    }
}
