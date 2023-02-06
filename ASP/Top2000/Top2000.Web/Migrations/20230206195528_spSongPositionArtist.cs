using Microsoft.EntityFrameworkCore.Migrations;
using System.Text;

#nullable disable

namespace Web.Migrations
{
    /// <inheritdoc />
    public partial class spSongPositionArtist : Migration
    {
        /// <inheritdoc />
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            StringBuilder sb = new StringBuilder();
            sb.Append(@"CREATE PROCEDURE  spSongPositionArtist @Year INT
AS
SELECT s.SongId, s.Photo[SongPhoto], s.ReleaseYear, s.Title, s.ArtistId, a.Name, p.Place, OldPosition = (
        SELECT p.Place
        FROM Position AS p
        WHERE p.Year = @Year - 1
            AND p.SongId = s.SongId
        )
FROM Song as s
JOIN Artist as a
ON a.ArtistId = s.ArtistId
JOIN Position as p
ON p.SongId = s.SongId
Where p.Year = @Year
ORDER BY 7");
            migrationBuilder.Sql(sb.ToString());
        }

        /// <inheritdoc />
        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.Sql(@"DROP PROCEDURE  spSongPositionArtist");

        }
    }
}
