using Ambev.DeveloperEvaluation.Domain.Common;
using Ambev.DeveloperEvaluation.Domain.Enums.Sales;

namespace Ambev.DeveloperEvaluation.Domain.Entities.Sales
{
    public class Product : BaseEntity
    {
        /// <summary>
        /// Gets or sets the quantity of the product available or purchased.
        /// Represents the total number of units.
        /// </summary>
        public int Ammount { get; set; }

        /// <summary>
        /// Gets or sets the unit price of the product.
        /// Represents the cost of a single unit in decimal format.
        /// </summary>
        public decimal UnitPrice { get; set; }

        /// <summary>
        /// Gets or sets the discount tier for the product.
        /// Determines the discount category applied to this product.
        /// Default is <see cref="DiscountTier.NoDiscount"/>.
        /// </summary>
        public DiscountTier DiscountTier { get; set; }

        /// <summary>
        /// Gets the date and time when the product was created.
        /// </summary>
        public DateTime CreatedAt { get; set; }

        /// <summary>
        /// Gets the date and time of the last update to the product's information.
        /// </summary>
        public DateTime? UpdatedAt { get; set; }

    }
}