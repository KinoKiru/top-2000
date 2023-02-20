using Microsoft.EntityFrameworkCore.Migrations;
using System.Text;

#nullable disable

namespace Web.Migrations
{
    /// <inheritdoc />
    public partial class spArtistWithSongsExtended : Migration
    {
        /// <inheritdoc />
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            StringBuilder sb = new StringBuilder();
            sb.Append(@"CREATE PROCEDURE spArtistWithSongsExtended @ARTISTID INT
AS
SELECT a.ArtistId, a.Name, a.Description, a.Photo[ArtistPhoto], s.SongId, s.Title, s.ReleaseYear, s.Photo[SongPhoto] from Artist as a
JOIN Song as s
ON s.ArtistId = a.ArtistId
WHERE a.ArtistId = @ARTISTID");
            migrationBuilder.Sql(sb.ToString());
        }

        /// <inheritdoc />
        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.Sql(@"DROP PROCEDURE spArtistWithSongsExtended");
        }
    }
}
