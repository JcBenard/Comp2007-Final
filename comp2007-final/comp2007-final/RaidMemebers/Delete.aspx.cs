using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.ModelBinding;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Entity;
using Microsoft.AspNet.FriendlyUrls.ModelBinding;
using Comp2007_final.Models;

namespace Comp2007_final.RaidMemebers
{
    public partial class Delete : System.Web.UI.Page
    {
		protected Comp2007_final.Models.RaidsEntities _db = new Comp2007_final.Models.RaidsEntities();

        protected void Page_Load(object sender, EventArgs e)
        {
        }

        // This is the Delete methd to delete the selected RaidMemeber item
        // USAGE: <asp:FormView DeleteMethod="DeleteItem">
        public void DeleteItem(int Id)
        {
            using (_db)
            {
                var item = _db.RaidMemebers.Find(Id);

                if (item != null)
                {
                    _db.RaidMemebers.Remove(item);
                    _db.SaveChanges();
                }
            }
            Response.Redirect("../Default");
        }

        // This is the Select methd to selects a single RaidMemeber item with the id
        // USAGE: <asp:FormView SelectMethod="GetItem">
        public Comp2007_final.Models.RaidMemeber GetItem([FriendlyUrlSegmentsAttribute(0)]int? Id)
        {
            if (Id == null)
            {
                return null;
            }

            using (_db)
            {
	            return _db.RaidMemebers.Where(m => m.Id == Id).Include(m => m.Raid).FirstOrDefault();
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

