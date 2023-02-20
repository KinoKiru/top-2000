using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace Web.Migrations
{
    /// <inheritdoc />
    public partial class convertbytearraytostringsongs : Migration
    {
        /// <inheritdoc />
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropColumn(name: "Photo", table: "Song");
            migrationBuilder.AddColumn<string>(name: "Photo", table: "Song", type: "nvarchar(max)", nullable: true);
        }

        /// <inheritdoc />
        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropColumn(name: "Photo", table: "Song");
            migrationBuilder.AddColumn<string>(name: "Photo", table: "Song", type: "varbinary(max)", nullable: true);
        }
    }
}
