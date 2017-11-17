using System;
using SVC.Framework.DAL;
using SVC.Core.Config;
using System.Data.Entity.Infrastructure;
using System.Data.Entity;
using SVC.Cms.Contract;
using SVC.Core.Log;

namespace SVC.Cms.DAL
{
    public class CmsDbContext : DbContextBase
    {
        public CmsDbContext()
            : base(CachedConfigContext.Current.DaoConfig.Cms, new LogDbContext())
        {
        }

        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            Database.SetInitializer<CmsDbContext>(null);

            modelBuilder.Entity<Article>()
                .HasMany(e => e.Tags)
                .WithMany(e => e.Articles)
                .Map(m =>
                {
                    m.ToTable("ArticleTag");
                    m.MapLeftKey("ArticleId");
                    m.MapRightKey("TagId");
                });

            base.OnModelCreating(modelBuilder);
        }

        public DbSet<Article> Articles { get; set; }
        public DbSet<Channel> Channels { get; set; }
        public DbSet<Tag> Tags { get; set; }
    }
}
