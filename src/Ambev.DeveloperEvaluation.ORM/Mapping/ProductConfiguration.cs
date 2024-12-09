using Ambev.DeveloperEvaluation.Domain.Entities.Sales;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata.Builders;

namespace Ambev.DeveloperEvaluation.ORM.Mapping
{
    public class ProductConfiguration : IEntityTypeConfiguration<Product>
    {
        public void Configure(EntityTypeBuilder<Product> builder)
        {
            builder.ToTable("Products");

            builder.HasKey(p => p.Id);
            builder.Property(p => p.Id).HasColumnType("uuid").HasDefaultValueSql("gen_random_uuid()");

            builder.Property(p => p.DiscountTier)
                .HasConversion<string>()
                .HasMaxLength(20)
                .IsRequired();

            builder.Property(p => p.Amount)
                .IsRequired();

            builder.Property(p => p.UnitPrice)
                .HasColumnType("decimal(18,2)")
                .IsRequired();

            builder.Property(p => p.CreatedAt).IsRequired();
            builder.Property(p => p.UpdatedAt).IsRequired(false);
        }
    }
}
