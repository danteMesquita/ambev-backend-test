using Ambev.DeveloperEvaluation.Domain.Common;
using Ambev.DeveloperEvaluation.Domain.Enums.Sales;

namespace Ambev.DeveloperEvaluation.Domain.Entities.Sales
{
    public class Product : BaseEntity
    {
        public DiscountTier DiscountTier { get; set; } = DiscountTier.NoDiscount;
        public int Ammount { get; set; }
        public decimal UnitPrice { get; set; }
    }
}