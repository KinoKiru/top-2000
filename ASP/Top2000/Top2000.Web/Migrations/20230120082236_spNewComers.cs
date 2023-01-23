using Microsoft.EntityFrameworkCore.Migrations;
using System.Text;

#nullable disable

namespace Web.Migrations
{
    /// <inheritdoc />
    public partial class spNewComers : Migration
    {
        /// <inheritdoc />
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            StringBuilder sb = new();
            sb.Append(@" CREATE PROCEDURE spNewCOmers @year int AS SELECT p.Place, a.Name, s.Title, s.ReleaseYear
FROM Song s
JOIN Position p ON p.SongId = s.SongId
JOIN Artist a ON a.ArtistId = s.ArtistId
WHERE p.Year = @year AND NOT EXISTS(SELECT DISTINCT Position.SongId FROM Song JOIN Position ON Position.SongId = s.SongId WHERE Position.Year < @year)
ORDER BY p.Place ");

            migrationBuilder.Sql(sb.ToString());
        }

        /// <inheritdoc />
        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.Sql(@"DROP PROCEDURE spNewCOmers");

        }
    }
}
