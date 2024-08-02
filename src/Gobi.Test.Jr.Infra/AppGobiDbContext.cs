using Microsoft.EntityFrameworkCore;
using Gobi.Test.Jr.Domain;

namespace Gobi.Test.Jr.Infra
{
    public class AppGobiDbContext : DbContext
    {
        public AppGobiDbContext(DbContextOptions<AppGobiDbContext> options)
            : base(options)
        {
        }

        public DbSet<TodoItem> TodoItems { get; set; }

        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            base.OnModelCreating(modelBuilder);

            modelBuilder.Entity<TodoItem>(entity =>
            {
                entity.HasKey(e => e.Id);
                entity.Property(e => e.Description).IsRequired().HasMaxLength(255);
                entity.Property(e => e.Status).IsRequired().HasMaxLength(50);
                entity.Property(e => e.Completed).IsRequired();
                entity.Property(e => e.Finish).IsRequired();
            });
        }
    }
}
