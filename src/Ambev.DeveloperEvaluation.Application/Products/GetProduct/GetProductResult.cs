namespace Ambev.DeveloperEvaluation.Application.Products.GetProduct
{
    /// <summary>
    /// Represents the result of retrieving a product.
    /// </summary>
    public class GetProductResult
    {
        /// <summary>
        /// Gets or sets the unique identifier of the product.
        /// </summary>
        public Guid Id { get; set; }

        /// <summary>
        /// Gets or sets the name of the product.
        /// </summary>
        public string Name { get; set; } = null!;

        /// <summary>
        /// Gets or sets the unit price of the product.
        /// </summary>
        public decimal UnitPrice { get; set; }

        /// <summary>
        /// Gets or sets the date and time when the product was created.
        /// </summary>
        public DateTime CreatedAt { get; set; }

        /// <summary>
        /// Gets or sets the date and time of the last update to the product's information.
        /// </summary>
        public DateTime UpdatedAt { get; set; }
    }

}