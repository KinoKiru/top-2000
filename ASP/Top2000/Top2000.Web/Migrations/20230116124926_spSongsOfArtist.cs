using Microsoft.EntityFrameworkCore.Migrations;
using System.Text;

#nullable disable

namespace Web.Migrations
{
    /// <inheritdoc />
    public partial class spSongsOfArtist : Migration
    {
        /// <inheritdoc />
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            StringBuilder sb = new();
            sb.Append("CREATE PROCEDURE spSongsOfArtist");
            sb.Append(" @ARTIST NVARCHAR(100)");
            sb.Append(" AS");
            sb.Append(" SELECT s.Title , s.ReleaseYear");
            sb.Append(" FROM song s");
            sb.Append(" WHERE s.ArtistId = (");
            sb.Append(" SELECT ArtistId FROM Artist");
            sb.Append(" WHERE name = @ARTIST)");
            sb.Append(" ORDER BY 2");
            migrationBuilder.Sql(sb.ToString());
        }

        /// <inheritdoc />
        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.Sql(@"DROP PROCEDURE spSongsOfArtist");
        }
    }
}
