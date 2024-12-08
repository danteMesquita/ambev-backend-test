using Ambev.DeveloperEvaluation.Domain.Entities.Sales;
using Ambev.DeveloperEvaluation.Domain.Enums.Sales;
using Bogus;

namespace Ambev.DeveloperEvaluation.Unit.Domain.Entities.Sales.TestData
{
    /// <summary>
    /// Provides methods for generating test data for the Product entity using the Bogus library.
    /// </summary>
    public static class ProductTestData
    {
        /// <summary>
        /// Configures the Faker to generate valid Product entities.
        /// </summary>
        private static readonly Faker<Product> ProductFaker = new Faker<Product>()
            .RuleFor(p => p.Id, f => Guid.NewGuid())
            .RuleFor(p => p.DiscountTier, f => f.PickRandom<DiscountTier>())
            .RuleFor(p => p.Ammount, f => f.Random.Number(1, 100))
            .RuleFor(p => p.UnitPrice, f => f.Finance.Amount(10, 1000));

        /// <summary>
        /// Generates a valid Product entity with randomized data.
        /// </summary>
        /// <returns>A valid Product entity.</returns>
        public static Product GenerateValidProduct()
        {
            return ProductFaker.Generate();
        }

        /// <summary>
        /// Generates a list of valid Product entities.
        /// </summary>
        /// <param name="count">The number of Product entities to generate.</param>
        /// <returns>A list of valid Product entities.</returns>
        public static IEnumerable<Product> GenerateValidProducts(int count)
        {
            return ProductFaker.Generate(count);
        }

        /// <summary>
        /// Generates a Product entity with an invalid UnitPrice (negative value).
        /// Useful for testing validation errors.
        /// </summary>
        /// <returns>A Product entity with an invalid UnitPrice.</returns>
        public static Product GenerateProductWithInvalidUnitPrice()
        {
            var product = GenerateValidProduct();
            product.UnitPrice = -10; // Invalid value
            return product;
        }

        /// <summary>
        /// Generates a Product entity with an invalid Ammount (zero).
        /// Useful for testing validation errors.
        /// </summary>
        /// <returns>A Product entity with an invalid Ammount.</returns>
        public static Product GenerateProductWithInvalidAmmount()
        {
            var product = GenerateValidProduct();
            product.Ammount = 0; // Invalid value
            return product;
        }
    }
}