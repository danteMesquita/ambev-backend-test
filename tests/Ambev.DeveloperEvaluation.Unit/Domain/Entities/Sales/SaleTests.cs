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
        ///// <summary>
        ///// Tests that when a sale is created, its status is set to Active.
        ///// </summary>
        //[Fact(DisplayName = "Sale status should be Active upon creation")]
        //public void Given_NewSale_When_Created_Then_StatusShouldBeActive()
        //{
        //    // Arrange
        //    var sale = SaleTestData.GenerateValidSale();

        //    // Assert
        //    Assert.Equal(SaleStatus.Active, sale.Status);
        //}

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

        [Fact(DisplayName = "Total amount should match the sum of product prices times their quantities")]
        public void Given_ValidSale_When_CalculatingTotalAmount_Then_ShouldMatchSumOfProducts()
        {
            // Arrange
            var sale = SaleTestData.GenerateValidSale();
            var products = ProductTestData.GenerateValidProducts(3); // Gera 3 produtos
            sale.Products = products.Select(p => new SaleProduct
            {
                SaleId = sale.Id,
                ProductId = p.Id,
                Product = p,
                Quantity = 2, // Cada produto tem uma quantidade de 2
                TotalPrice = p.UnitPrice * 2 // Calcula o preço total por produto
            }).ToList();

            sale.AmountByItem = products.ToDictionary(p => p.Id, _ => 2); // Quantidade por produto é 2

            var expectedTotal = sale.Products.Sum(sp => sp.Product.UnitPrice * sale.AmountByItem[sp.ProductId]);

            // Act
            sale.CalculateTotalAmount();

            // Assert
            Assert.Equal(expectedTotal, sale.TotalAmount);
        }

        ///// <summary>
        ///// Tests that validation passes for a sale with valid data.
        ///// </summary>
        //[Fact(DisplayName = "Validation should pass for a sale with valid data")]
        //public void Given_ValidSale_When_Validated_Then_ShouldReturnValid()
        //{
        //    // Arrange
        //    var sale = SaleTestData.GenerateValidSale();

        //    // Act
        //    var result = sale.Validate();

        //    // Assert
        //    Assert.True(result.IsValid);
        //    Assert.Empty(result.Errors);
        //}

        /// <summary>
        /// Tests that validation fails for a sale with invalid data.
        /// </summary>
        [Fact(DisplayName = "Validation should fail for a sale with invalid data")]
        public void Given_InvalidSale_When_Validated_Then_ShouldReturnInvalid()
        {
            // Arrange
            var sale = new Sale
            {
                SaleNumber = Guid.Empty,
                CustomerID = Guid.Empty,
                TotalAmount = -100, 
                BranchId = Guid.Empty,
                Products = null, 
                AmountByItem = null,
                Status = SaleStatus.Unknown 
            };

            // Act
            var result = sale.Validate();

            // Assert
            Assert.False(result.IsValid);
            Assert.NotEmpty(result.Errors);
        }
    }
}
