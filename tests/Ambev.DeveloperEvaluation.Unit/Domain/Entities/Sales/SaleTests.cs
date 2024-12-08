using Ambev.DeveloperEvaluation.Domain.Entities.Sales;
using Ambev.DeveloperEvaluation.Domain.Enums.Sales;
using Ambev.DeveloperEvaluation.Unit.Domain.Entities.Sales.TestData;
using Xunit;

namespace Ambev.DeveloperEvaluation.Unit.Domain.Entities.Sales
{
    /// <summary>
    /// Contains unit tests for the Sale entity class.
    /// Tests cover status changes, validation scenarios, and business rules.
    /// </summary>
    public class SaleTests
    {
        /// <summary>
        /// Tests that when a sale is created, its status is set to Active.
        /// </summary>
        [Fact(DisplayName = "Sale status should be Active upon creation")]
        public void Given_NewSale_When_Created_Then_StatusShouldBeActive()
        {
            // Arrange
            var sale = SaleTestData.GenerateValidSale();

            // Assert
            Assert.Equal(SaleStatus.Active, sale.Status);
        }

        /// <summary>
        /// Tests that a sale's status changes to Cancelled when it is cancelled.
        /// </summary>
        [Fact(DisplayName = "Sale status should change to Cancelled when cancelled")]
        public void Given_ActiveSale_When_Cancelled_Then_StatusShouldBeCancelled()
        {
            // Arrange
            var sale = SaleTestData.GenerateValidSale();
            sale.Status = SaleStatus.Active;

            // Act
            sale.Cancel();

            // Assert
            Assert.Equal(SaleStatus.Cancelled, sale.Status);
        }

        /// <summary>
        /// Tests that the total amount is correctly calculated for a sale with valid products.
        /// </summary>
        [Fact(DisplayName = "Total amount should match the sum of product prices times their quantities")]
        public void Given_ValidSale_When_CalculatingTotalAmount_Then_ShouldMatchSumOfProducts()
        {
            // Arrange
            var sale = SaleTestData.GenerateValidSale();
            sale.Products = ProductTestData.GenerateValidProducts(3);
            sale.AmountByItem = sale.Products.ToDictionary(p => p.Id, _ => 2); // Each product has a quantity of 2

            var expectedTotal = sale.Products.Sum(p => p.UnitPrice * sale.AmountByItem[p.Id]);

            // Act
            sale.CalculateTotalAmount();

            // Assert
            Assert.Equal(expectedTotal, sale.TotalAmount);
        }

        /// <summary>
        /// Tests that validation passes for a sale with valid data.
        /// </summary>
        [Fact(DisplayName = "Validation should pass for a sale with valid data")]
        public void Given_ValidSale_When_Validated_Then_ShouldReturnValid()
        {
            // Arrange
            var sale = SaleTestData.GenerateValidSale();

            // Act
            var result = sale.Validate();

            // Assert
            Assert.True(result.IsValid);
            Assert.Empty(result.Errors);
        }

        /// <summary>
        /// Tests that validation fails for a sale with invalid data.
        /// </summary>
        [Fact(DisplayName = "Validation should fail for a sale with invalid data")]
        public void Given_InvalidSale_When_Validated_Then_ShouldReturnInvalid()
        {
            // Arrange
            var sale = new Sale
            {
                SaleNumber = Guid.Empty, // Invalid: should not be empty
                CustomerID = Guid.Empty, // Invalid: should not be empty
                TotalAmount = -100, // Invalid: negative value
                BranchId = Guid.Empty, // Invalid: should not be empty
                Products = null, // Invalid: products cannot be null
                AmountByItem = null, // Invalid: mapping cannot be null
                Status = SaleStatus.Unknown // Invalid: cannot be Unknown
            };

            // Act
            var result = sale.Validate();

            // Assert
            Assert.False(result.IsValid);
            Assert.NotEmpty(result.Errors);
        }
    }
}
