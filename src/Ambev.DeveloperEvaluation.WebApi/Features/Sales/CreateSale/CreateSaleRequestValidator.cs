using FluentValidation;

namespace Ambev.DeveloperEvaluation.WebApi.Features.Sales.CreateSale
{
    // <summary>
    /// Validator for CreateSaleRequest that defines validation rules for sale creation.
    /// </summary>
    public class CreateSaleRequestValidator : AbstractValidator<CreateSaleRequest>
    {
        /// <summary>
        /// Initializes a new instance of the CreateSaleRequestValidator class with validation rules.
        /// </summary>
        public CreateSaleRequestValidator()
        {
            // Validate that CustomerID is not empty
            RuleFor(request => request.CustomerID)
                .NotEmpty()
                .WithMessage("CustomerID is required.");

            // Validate that BranchId is not empty
            RuleFor(request => request.BranchId)
                .NotEmpty()
                .WithMessage("BranchId is required.");

            // Validate that Products list is not empty
            RuleFor(request => request.Products)
                .NotEmpty()
                .WithMessage("At least one product is required in the sale.")
                .ForEach(product =>
                {
                    // Nested validator for SaleProductRequest
                    product.SetValidator(new SaleProductRequestValidator());
                });
        }
    }

    /// <summary>
    /// Validator for SaleProductRequest that defines validation rules for products in a sale.
    /// </summary>
    public class SaleProductRequestValidator : AbstractValidator<SaleProductRequest>
    {
        /// <summary>
        /// Initializes a new instance of the SaleProductRequestValidator class with validation rules.
        /// </summary>
        public SaleProductRequestValidator()
        {
            // Validate that Product Name is not empty
            RuleFor(product => product.Id)
                .NotEmpty()
                .WithMessage("Product id is required.");

            // Validate that Product Name is not empty
            RuleFor(product => product.Name)
                .NotEmpty()
                .WithMessage("Product name is required.");

            // Validate that Amount is greater than zero
            RuleFor(product => product.Amount)
                .GreaterThan(0)
                .WithMessage("Product amount must be greater than zero.");
        }
    }
}
