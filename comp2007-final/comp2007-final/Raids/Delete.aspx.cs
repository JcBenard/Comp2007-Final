using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.ModelBinding;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Entity;
using Microsoft.AspNet.FriendlyUrls.ModelBinding;
using comp2007_final.Models;

namespace comp2007_final.Raids
{
    public partial class Delete : System.Web.UI.Page
    {
		protected comp2007_final.Models.RaidsConnection _db = new comp2007_final.Models.RaidsConnection();

        protected void Page_Load(object sender, EventArgs e)
        {
        }

        // This is the Delete methd to delete the selected Raid item
        // USAGE: <asp:FormView DeleteMethod="DeleteItem">
        public void DeleteItem(int Id)
        {
            using (_db)
            {
                var item = _db.Raids.Find(Id);

                if (item != null)
                {
                    _db.Raids.Remove(item);
                    _db.SaveChanges();
                }
            }
            Response.Redirect("../Default");
        }

        // This is the Select methd to selects a single Raid item with the id
        // USAGE: <asp:FormView SelectMethod="GetItem">
        public comp2007_final.Models.Raid GetItem([FriendlyUrlSegmentsAttribute(0)]int? Id)
        {
            if (Id == null)
            {
                return null;
            }

            using (_db)
            {
	            return _db.Raids.Where(m => m.Id == Id).FirstOrDefault();
            }
        }

        protected void ItemCommand(object sender, FormViewCommandEventArgs e)
        {
            if (e.CommandName.Equals("Cancel", StringComparison.OrdinalIgnoreCase))
            {
                Response.Redirect("../Default");
            }
        }
    }
}

