using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace Web.Migrations
{
    /// <inheritdoc />
    public partial class changedbytearraystring : Migration
    {
        /// <inheritdoc />
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropColumn(name: "Photo", table: "Artist");
            migrationBuilder.AddColumn<string>(name: "Photo", table: "Artist", type: "nvarchar(max)", nullable: true);
        }

        /// <inheritdoc />
        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropColumn(name: "Photo", table: "Artist");
            migrationBuilder.AddColumn<string>(name: "Photo", table: "Artist", type: "varbinary(max)", nullable: true);
        }
    }
}
