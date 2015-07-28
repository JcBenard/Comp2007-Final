using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Entity;
using Comp2007_final.Models;

namespace Comp2007_final.Raids
{
    public partial class Default : System.Web.UI.Page
    {
		protected Comp2007_final.Models.RaidsEntities _db = new Comp2007_final.Models.RaidsEntities();

        protected void Page_Load(object sender, EventArgs e)
        {
        }

        // Model binding method to get List of Raid entries
        // USAGE: <asp:ListView SelectMethod="GetData">
        public IQueryable<Comp2007_final.Models.Raid> GetData()
        {
            return _db.Raids;
        }
    }
}

