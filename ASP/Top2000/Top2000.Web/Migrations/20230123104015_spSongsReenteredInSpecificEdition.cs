using Microsoft.EntityFrameworkCore.Migrations;
using System.Text;

#nullable disable

namespace Web.Migrations
{
    /// <inheritdoc />
    public partial class spSongsReenteredInSpecificEdition : Migration
    {
        /// <inheritdoc />
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            StringBuilder sb = new();
            sb.Append(" CREATE PROCEDURE spSongsReenteredInSpecificEdition");
            sb.Append(" @Year INT");
            sb.Append(" AS");
            sb.Append(" SELECT p.Place, a.Name, s.Title, s.ReleaseYear");
            sb.Append(" FROM Position AS p");
            sb.Append(" JOIN Song s ON s.SongId = p.SongId");
            sb.Append(" JOIN Artist a ON s.ArtistId = a.ArtistId");
            sb.Append(" WHERE NOT EXISTS (");
            sb.Append(" SELECT p2.Place FROM Position AS p2");
            sb.Append(" WHERE p2.SongId = s.SongId");
            sb.Append(" AND p2.Year = @Year -1)");
            sb.Append(" AND EXISTS (");
            sb.Append(" SELECT p3.Place FROM Position AS p3");
            sb.Append(" WHERE p3.SongId = s.SongId");
            sb.Append(" AND p3.Year < (@Year - 1))");
            sb.Append(" AND p.Year = @Year");
            sb.Append(" ORDER BY 1");
            migrationBuilder.Sql(sb.ToString());
        }

        /// <inheritdoc />
        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.Sql(@"DROP PROCEDURE spSongsReenteredInSpecificEdition");
        }
    }
}
