using _3DPRT.Models;
using System.Data.Entity;
using System.Data.Entity.ModelConfiguration.Conventions;

namespace _3DPRT.DataAccess
{
    public class PrintingDBContext : DbContext
    {
        public PrintingDBContext() : base("PrintingDatabase")
        {

        }

        public DbSet<User> Users {get;set;}
        public DbSet<Order> Orders { get; set; }
        public DbSet<Model> Models { get; set; }
        public DbSet<BluePrint> BluePrintrs { get; set; }
        public DbSet<CNC> Carvings { get; set; }
        public DbSet<Laser> Engravings { get; set; }
        public DbSet<Printing> Printings { get; set; }

        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            modelBuilder.Conventions.Remove<OneToManyCascadeDeleteConvention>();
        }

    }
}