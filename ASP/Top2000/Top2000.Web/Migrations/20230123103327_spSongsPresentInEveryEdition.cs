using System.Text;
using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace Web.Migrations
{
    /// <inheritdoc />
    public partial class spSongsPresentInEveryEdition : Migration
    {
        /// <inheritdoc />
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            StringBuilder sb = new();
            sb.Append(" CREATE PROCEDURE spSongsPresentInEveryEdition");
            sb.Append(" AS");
            sb.Append(" SELECT DISTINCT s.Title , a.Name, s.ReleaseYear");
            sb.Append(" FROM Artist a");
            sb.Append(" JOIN Song s ON s.ArtistId = a.ArtistId");
            sb.Append(" WHERE (SELECT COUNT(DISTINCT Year) FROM Position) = (");
            sb.Append(" SELECT COUNT(*) FROM Position");
            sb.Append(" WHERE Position.SongId = s.SongId)");
            sb.Append(" ORDER BY 1");
            migrationBuilder.Sql(sb.ToString());
        }

        /// <inheritdoc />
        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.Sql(@"DROP PROCEDURE spSongsPresentInEveryEdition");
        }
    }
}
