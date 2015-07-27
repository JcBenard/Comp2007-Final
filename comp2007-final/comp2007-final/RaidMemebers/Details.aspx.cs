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

namespace comp2007_final.RaidMemebers
{
    public partial class Details : System.Web.UI.Page
    {
		protected comp2007_final.Models.RaidsConnection _db = new comp2007_final.Models.RaidsConnection();

        protected void Page_Load(object sender, EventArgs e)
        {
        }

        // This is the Select methd to selects a single RaidMemeber item with the id
        // USAGE: <asp:FormView SelectMethod="GetItem">
        public comp2007_final.Models.RaidMemeber GetItem([FriendlyUrlSegmentsAttribute(0)]int? Id)
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

