using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace TailsTek.MCL
{
    public class MCLContext : DbContext
    {

        public MCLContext() : base("MCLDatabase")
        {
            
        }
        public DbSet<User> Users { get; set; }

    }
}
