﻿using FluentValidation;

namespace Ambev.DeveloperEvaluation.Application.Sales.CreateSale
{
    /// <summary>
    /// Validator for CreateSaleCommand that defines validation rules for sales creation command.
    /// </summary>
    public class CreateSaleCommandValidator : AbstractValidator<CreateSaleCommand>
    {
        /// <summary>
        /// Validator for CreateSaleCommand that defines validation rules for sale creation command.
        /// </summary>
        /// <remarks>
        /// Validation rules include:
        /// - CustomerID: Must not be empty.
        /// - BranchId: Must not be empty.
        /// - Products: Must not be empty, and at least one product is required in the sale.
        /// - Each product:
        ///   - Name: Cannot be empty.
        ///   - Quantity: Must be greater than zero.
        /// </remarks>
        public CreateSaleCommandValidator()
        {
            // CustomerID must not be empty.
            RuleFor(sale => sale.CustomerID)
                .NotEmpty()
                .WithMessage("CustomerID is required.");

            // BranchId must not be empty.
            RuleFor(sale => sale.BranchId)
                .NotEmpty()
                .WithMessage("BranchId is required.");

            // Products list must not be empty.
            RuleFor(sale => sale.Products)
                .NotEmpty()
                .WithMessage("At least one product is required in the sale.");

            // Each product in the Products list must have a valid name and quantity.
            RuleForEach(sale => sale.Products).ChildRules(product =>
            {
                product.RuleFor(p => p.Name)
                    .NotEmpty()
                    .WithMessage("Product name is required.");

                product.RuleFor(p => p.Amount)
                    .GreaterThan(0)
                    .WithMessage("Product quantity must be greater than zero.");
            });
        }
    }
}