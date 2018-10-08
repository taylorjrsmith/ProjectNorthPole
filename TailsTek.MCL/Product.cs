using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.Migrations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Web.UI;

namespace TailsTek.MCL
{
    public class Product
    {
        [Key]
        public int Id { get; set; }
        [StringLength(500)]
        public string Name { get; set; }
        public string Image { get; set; }
        public decimal Price { get; set; }
        public int UserId { get; set; }
        [ForeignKey("UserId")]
        public User User { get; set; }


        public Product(string name, string image, decimal price, int userId)
        {
            Name = name;
            Image = image;
            Price = price;
            UserId = userId;
        }

        public Product()
        {

        }

        public void Save()
        {
            DBController.Get().Products.AddOrUpdate(this);
            DBController.Get().SaveChanges();
        }



    }
}
