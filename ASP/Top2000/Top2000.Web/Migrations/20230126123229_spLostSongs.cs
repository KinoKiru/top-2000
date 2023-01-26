using Microsoft.EntityFrameworkCore.Migrations;
using System.Text;

#nullable disable

namespace Web.Migrations
{
    /// <inheritdoc />
    public partial class spLostSongs : Migration
    {
        /// <inheritdoc />
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            StringBuilder sb = new StringBuilder();
            sb.Append(@"CREATE PROCEDURE spLostSongs @Year INT AS
SELECT p.Place, s.Title, a.Name, s.ReleaseYear
FROM Song s
JOIN Position p ON p.SongId = s.SongId
JOIN Artist a ON a.ArtistId = s.ArtistId
WHERE p.Year = @Year - 1 AND NOT EXISTS (SELECT Position.SongId FROM Song JOIN Position ON Position.SongId = s.SongId WHERE Position.Year = @Year)
ORDER BY 1 asc");
            migrationBuilder.Sql(sb.ToString());
        }

        /// <inheritdoc />
        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.Sql(@"DROP PROCEDURE spLostSongs");
        }
    }
}
