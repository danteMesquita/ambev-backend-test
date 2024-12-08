using Ambev.DeveloperEvaluation.Domain.Common;

namespace Ambev.DeveloperEvaluation.Domain.Entities.Sales
{
    /// <summary>
    /// Represents a customer entity.
    /// </summary>
    public class Customer : BaseEntity
    {
        /// <summary>
        /// The name of the customer.
        /// </summary>
        public string Name { get; set; } = null!;
    }
}