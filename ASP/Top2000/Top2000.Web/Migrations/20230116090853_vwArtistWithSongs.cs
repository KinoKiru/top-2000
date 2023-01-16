using Microsoft.EntityFrameworkCore.Migrations;
using System.Text;

#nullable disable

namespace Web.Migrations
{
    /// <inheritdoc />
    public partial class vwArtistWithSongs : Migration
    {
        /// <inheritdoc />
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            StringBuilder sb = new("CREATE VIEW vwArtistWithSongs");
            sb.Append(" AS"); sb.Append(" SELECT Name, Title, ReleaseYear");
            sb.Append(" FROM Artist a");
            sb.Append(" INNER JOIN song s ON a.ArtistId = s.ArtistId");
            migrationBuilder.Sql(sb.ToString());
        }

        /// <inheritdoc />
        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.Sql(@"DROP VIEW vwArtistWithSongs");
        }
    }
}
