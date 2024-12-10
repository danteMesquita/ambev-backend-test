using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace Ambev.DeveloperEvaluation.ORM.Migrations
{
    /// <inheritdoc />
    public partial class SeedDatabaseForNewProductStructure : Migration
    {
        /// <inheritdoc />
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            var sqlFilePath = Path.Combine(AppContext.BaseDirectory, "Seeds", "InitialSeed.sql");
            if (!File.Exists(sqlFilePath))
                throw new FileNotFoundException($"O arquivo de seed '{sqlFilePath}' não foi encontrado.");


            var sqlScript = File.ReadAllText(sqlFilePath);
            migrationBuilder.Sql(sqlScript);
        }

        /// <inheritdoc />
        protected override void Down(MigrationBuilder migrationBuilder)
        {

        }
    }
}
