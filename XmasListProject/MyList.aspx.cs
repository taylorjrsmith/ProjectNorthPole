using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using TailsTek.MCL;
using WebGrease.Css;

namespace XmasListProject
{
    public partial class MyList : System.Web.UI.Page
    {

        protected void Page_Init(object sender, EventArgs e)
        {
            ((MCL)Master).RequiresLogin = true;
            List<Product> products = new List<Product>();
            products.Add(new Product("Test Product", "/App_themes/logo.png", 249.99M, 1));
            products.AddRange(new MCLContext().Products.ToList());
            rptListItems.DataSource = products;
            rptListItems.DataBind();
        }

        protected void rptListItems_OnItemDataBound(object sender, RepeaterItemEventArgs e)
        {
            if (e.Item.ItemType == ListItemType.AlternatingItem || e.Item.ItemType == ListItemType.Item)
            {
                var product = (Product)e.Item.DataItem;

                Image image = (Image)e.Item.FindControl("imgItem");
                Literal litPrice = (Literal)e.Item.FindControl("litPrice");
                Literal litName = (Literal)e.Item.FindControl("litProductName");

                image.ImageUrl = product.Image;
                litPrice.Text = Math.Round(product.Price, 0).ToString();
                litName.Text = product.Name;
            }
        }

        protected void btnAddItem_OnClick(object sender, EventArgs e)
        { }
        //    string imageName = string.Empty;

        //    Boolean fileOK = false;
        //    String path = Server.MapPath("~/App_themes/");
        //    if (fuImage.HasFile)
        //    {
        //        String fileExtension =
        //            System.IO.Path.GetExtension(fuImage.FileName).ToLower();
        //        String[] allowedExtensions =
        //            {".gif", ".png", ".jpeg", ".jpg"};
        //        for (int i = 0; i < allowedExtensions.Length; i++)
        //        {
        //            if (fileExtension == allowedExtensions[i])
        //            {
        //                fileOK = true;
        //            }
        //        }
        //    }

        //    if (fileOK)
        //    {
        //        try
        //        {
        //            fuImage.PostedFile.SaveAs(path
        //                                          + fuImage.FileName);
        //            //Label1.Text = "File uploaded!";
        //            imageName = path + fuImage.FileName;
        //        }
        //        catch (Exception ex)
        //        {
        //            //  Label1.Text = "File could not be uploaded.";
        //        }
        //    }
        //    else
        //    {
        //        // Label1.Text = "Cannot accept files of this type.";
        //    }

        //    var Product = new Product(txtName.Text, imageName, Convert.ToDecimal(txtPrice.Text), HTTPContextManager.GetUser().Id);

        //    using (var context = new MCLContext())
        //    {
        //        context.Products.Add(Product);
        //        context.SaveChanges();
        //    }
        //}
    }
}