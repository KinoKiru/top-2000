using Microsoft.EntityFrameworkCore.Migrations;
using System.Text;

#nullable disable

namespace Web.Migrations
{
    /// <inheritdoc />
    public partial class spSongsWithSingleEntries : Migration
    {
        /// <inheritdoc />
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            StringBuilder sb = new();
            sb.Append(" CREATE PROCEDURE spSongsWithSingleEntries");
            sb.Append(" AS");
            sb.Append(" SELECT a.Name, s.Title, s.ReleaseYear, p.Place, p.Year");
            sb.Append(" FROM Position AS p");
            sb.Append(" JOIN Song AS s ON s.SongId = p.SongId");
            sb.Append(" JOIN Artist AS a ON s.ArtistId = a.ArtistId");
            sb.Append(" WHERE (SELECT COUNT(*) FROM Position p2");
            sb.Append(" WHERE p2.SongId = s.SongId) = 1");
            sb.Append(" ORDER BY 1, 2");
            migrationBuilder.Sql(sb.ToString());
        }

        /// <inheritdoc />
        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.Sql(@"DROP PROCEDURE spSongsWithSingleEntries");
        }
    }
}
