namespace Ambev.DeveloperEvaluation.WebApi.Features.Products.GetProduct
{
    /// <summary>
    /// Represents the response model for retrieving a product's details.
    /// </summary>
    public class GetProductResponse
    {
        /// <summary>
        /// Gets or sets the unique identifier of the product.
        /// </summary>
        public Guid Id { get; set; }
    }
}