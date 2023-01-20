using Microsoft.EntityFrameworkCore.Migrations;
using System.Text;

#nullable disable

namespace Web.Migrations
{
    /// <inheritdoc />
    public partial class spSamePosition : Migration
    {
        /// <inheritdoc />
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            StringBuilder sb = new();
            sb.Append(@" CREATE PROCEDURE spSamePosition @year int AS SELECT p.Place, a.Name, s.Title, s.ReleaseYear 
FROM Position as p
JOIN Song as s
ON s.SongId = p.SongId
JOIN Artist as a
ON s.ArtistId = a.ArtistId
WHERE p.Place = (SELECT p2.Place from Position as p2 WHERE p2.SongId = s.SongId AND p2.Year = @year -1) AND p.Year = @year
ORDER BY 1");

            migrationBuilder.Sql(sb.ToString());
        }

        /// <inheritdoc />
        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.Sql(@"DROP PROCEDURE  spSamePosition");

        }
    }
}
