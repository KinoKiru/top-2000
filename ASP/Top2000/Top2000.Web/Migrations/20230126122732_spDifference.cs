using Microsoft.EntityFrameworkCore.Migrations;
using Microsoft.Extensions.Primitives;
using System.Text;
#nullable disable

namespace Web.Migrations
{
    /// <inheritdoc />
    public partial class spDifference : Migration
    {
        /// <inheritdoc />
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            StringBuilder sb = new StringBuilder();
            sb.Append(@"CREATE PROCEDURE spDifference @Year INT AS
	SELECT s.Title,
    a.Name,
    s.ReleaseYear,
    ThisYear = (
        SELECT p.Place
        FROM Position AS p
        WHERE p.Year = @Year
            AND p.SongId = s.SongId
        ),
    OldYear = (
        SELECT p.Place
        FROM Position AS p
        WHERE p.Year = @Year - 1
            AND p.SongId = s.SongId
        ),
    Difference = (
        SELECT (
                SELECT p1.place
                FROM Position AS p1
                WHERE p1.Year = @Year - 1
                    AND p1.SongId = s.SongId
					AND p1.Place > p.Place
                ) - p.Place
        WHERE p.SongId = s.SongId
        )
FROM Song AS s
JOIN Artist AS a ON s.ArtistId = a.ArtistId
JOIN Position AS p ON p.SongId = s.SongId
WHERE p.Year = @Year
    AND (
        SELECT p.Place + (
                SELECT p1.place
                FROM Position AS p1
                WHERE p1.Year = @Year - 1
                    AND p1.SongId = s.SongId
					AND p1.Place > p.Place
                )
        WHERE p.SongId = s.SongId
        ) > 0");
            migrationBuilder.Sql(sb.ToString());
        }

        /// <inheritdoc />
        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.Sql(@"DROP PROCEDURE spDifference");
        }
    }
}
