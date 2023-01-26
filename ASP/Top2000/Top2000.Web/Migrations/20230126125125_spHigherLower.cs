using Microsoft.EntityFrameworkCore.Migrations;
using System.Text;

#nullable disable

namespace Web.Migrations
{
    /// <inheritdoc />
    public partial class spHigherLower : Migration
    {
        /// <inheritdoc />
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            StringBuilder sb = new StringBuilder();
            sb.Append(@"CREATE PROCEDURE spHigherLower @Year INT
AS
SELECT p.Place, s.Title, a.Name, s.ReleaseYear
FROM Song s
INNER JOIN Position p
ON p.SongId = s.Songid
INNER JOIN Artist a
ON a.ArtistId = s.ArtistId
WHERE p.Year = @Year AND a.ArtistId in
(SELECT a.ArtistId 
FROM Song 
INNER JOIN Artist a1 
ON a1.ArtistId = s.ArtistId
INNER JOIN Position p1
ON p1.songid = s.Songid
WHERE (p1.Place - 1 = p.Place OR p1.Place + 1 = p.Place) and p.Year = @Year);");
            migrationBuilder.Sql(sb.ToString());

        }

        /// <inheritdoc />
        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.Sql(@"DROP PROCEDURE spHigherLower");
        }
    }
}
