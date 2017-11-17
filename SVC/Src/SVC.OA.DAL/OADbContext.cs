using System;
using SVC.Framework.DAL;
using SVC.Core.Config;
using System.Data.Entity.Infrastructure;
using System.Data.Entity;
using SVC.OA.Contract;
using SVC.Core.Log;

namespace SVC.OA.DAL
{
    public class OADbContext : DbContextBase
    {
        public OADbContext()
            : base(CachedConfigContext.Current.DaoConfig.OA, new LogDbContext())
        {
        }

        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            Database.SetInitializer<OADbContext>(null);
            base.OnModelCreating(modelBuilder);
        }

        public DbSet<Staff> Staffs { get; set; }
        public DbSet<Branch> Branchs { get; set; }
    }
}
