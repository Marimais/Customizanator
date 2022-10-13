using _3DPRT.Models;
using System.Data.Entity;

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
    }
}