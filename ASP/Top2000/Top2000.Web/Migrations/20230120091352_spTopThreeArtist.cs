using Microsoft.EntityFrameworkCore.Migrations;
using System.Text;

#nullable disable

namespace Web.Migrations
{
    /// <inheritdoc />
    public partial class spTopThreeArtist : Migration
    {
        /// <inheritdoc />
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            StringBuilder sb = new();
            sb.Append(@" CREATE PROCEDURE spTopThreeArtist @year int AS SELECT  DISTINCT TOP(3) a.Name, 
AmountOfSongs = (SELECT COUNT(p2.SongId) from Position as p2 JOIN Song as s2 ON s2.SongId = p2.SongId WHERE s2.ArtistId = a.ArtistId AND p2.Year = @year),
Average = (SELECT AVG(p3.Place) 
    from Position as p3 
    JOIN Song as s2 ON s2.SongId = p3.SongId
    WHERE s2.ArtistId = a.ArtistId AND p3.Year = @year),
Highest = (SELECT MIN(p3.Place) 
    from Position as p3 
    JOIN Song as s2 ON s2.SongId = p3.SongId
    WHERE s2.ArtistId = a.ArtistId AND p3.Year = @year)
FROM Position as p
JOIN Song as s
ON s.SongId = p.SongId
JOIN Artist as a
ON s.ArtistId = a.ArtistId
ORDER BY 2 DESC");

            migrationBuilder.Sql(sb.ToString());
        }

        /// <inheritdoc />
        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.Sql(@"DROP PROCEDURE spTopThreeArtist");

        }
    }
}
