using ApiDbLayerTC.Entities;
using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ApiDbLayerTC
{
    public class ApiDbContext:DbContext
    {
        public ApiDbContext()
        { }
        public ApiDbContext(DbContextOptions options)
        : base(options)
        {

        }

        public DbSet<Teacher> Teachers { get; set; }
        public DbSet<ClassRoom> Classrooms { get; set; }
       


        protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
        {
            optionsBuilder.UseSqlServer(@"Server=SWATI;Database=TCwebApiDB;Trusted_Connection=True;");
        }

                                 

    }
}
