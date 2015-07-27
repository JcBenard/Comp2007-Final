using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Entity;
using comp2007_final.Models;

namespace comp2007_final.RaidMemebers
{
    public partial class Default : System.Web.UI.Page
    {
		protected comp2007_final.Models.RaidsConnection _db = new comp2007_final.Models.RaidsConnection();

        protected void Page_Load(object sender, EventArgs e)
        {
        }

        // Model binding method to get List of RaidMemeber entries
        // USAGE: <asp:ListView SelectMethod="GetData">
        public IQueryable<comp2007_final.Models.RaidMemeber> GetData()
        {
            return _db.RaidMemebers.Include(m => m.Raid);
        }
    }
}

