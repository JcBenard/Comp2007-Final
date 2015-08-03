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
using Microsoft.AspNet.FriendlyUrls;
using System.Data.SqlClient;
using System.Data;

namespace Comp2007_final.RaidMemebers
{
    public partial class Delete : System.Web.UI.Page
    {
		protected Comp2007_final.Models.RaidsEntities _db = new Comp2007_final.Models.RaidsEntities();
        protected String Role;
        SqlCommand cmdUp;

        protected void Page_Load(object sender, EventArgs e)
        {
            foreach (var segment in Request.GetFriendlyUrlSegments()) { Role = segment;};
        }

        // This is the Delete methd to delete the selected RaidMemeber item
        // USAGE: <asp:FormView DeleteMethod="DeleteItem">
        public void DeleteItem(int Id)
        {
            int raids;

            using (_db)
            {
                var item = _db.RaidMemebers.Find(Id);

                raids = int.Parse(item.RaidId.ToString());

                if (item != null)
                {

                    SqlConnection cnn = new SqlConnection();
                    cnn = new SqlConnection("Data source=niaogbu2bc.database.windows.net;initial catalog=finalProjectDB;user id=admins;password=Servers7");
                    cnn.Open();

                    switch (Role)
                    {
                        case "Dps":
                            cmdUp = new SqlCommand("UPDATE Raids SET DpsHave = DpsHave - 1 WHERE Id =  " + raids, cnn);
                            cmdUp.CommandType = CommandType.Text;
                            cmdUp.ExecuteNonQuery();
                            break;
                        case "Healer":
                            cmdUp = new SqlCommand("UPDATE Raids SET HealersHave = HealersHave - 1 WHERE Id =  " + raids, cnn);
                            cmdUp.CommandType = CommandType.Text;
                            cmdUp.ExecuteNonQuery();
                            break;
                        case "Tank":
                            cmdUp = new SqlCommand("UPDATE Raids SET TanksHave = TanksHave - 1 WHERE Id =  " + raids, cnn);
                            cmdUp.CommandType = CommandType.Text;
                            cmdUp.ExecuteNonQuery();
                            break;
                        default:
                            break;
                    }

                    cnn.Close();

                    _db.RaidMemebers.Remove(item);
                    _db.SaveChanges();
                }
            }
            Response.Redirect(FriendlyUrl.Href("~/RaidMemebers/Default", raids));
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
                Response.Redirect("~/Raids");
            }
        }
    }
}

