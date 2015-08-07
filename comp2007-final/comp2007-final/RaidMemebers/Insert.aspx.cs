using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Microsoft.AspNet.FriendlyUrls;
using System.Data.SqlClient;
using System.Web.Configuration;
using System.Data;
using Comp2007_final.Models;

namespace Comp2007_final.RaidMemebers
{
    public partial class Insert : System.Web.UI.Page
    {
        protected String Id = null;
        protected Comp2007_final.Models.RaidsEntities _db = new Comp2007_final.Models.RaidsEntities();
        SqlCommand cmdUp;

        protected void Page_Load(object sender, EventArgs e)
        {
            //grabs the friendlyurlsegments
            foreach (var segment in Request.GetFriendlyUrlSegments()) { Id = segment; };

        }

        //adds the user to the selected event
        protected void Join(object sender, EventArgs e)
        {
            String name = null;
            if (System.Web.HttpContext.Current.User.Identity.IsAuthenticated)
            {
                name = System.Web.HttpContext.Current.User.Identity.Name;
            }

            SqlConnection cnn = new SqlConnection();
            cnn = new SqlConnection("Data source=niaogbu2bc.database.windows.net;initial catalog=finalProjectDB;user id=admins;password=Servers7");
            cnn.Open();

            SqlCommand cmd = new SqlCommand("INSERT INTO RaidMemebers(Name, Role, RaidId) values ('" + name
                + "', '" + RoleDropDownList.SelectedItem.Text + "', '" + Id + "')", cnn);
            cmd.CommandType = CommandType.Text;
            cmd.ExecuteNonQuery();

            
            //increments field for the event in the role they chose
            switch (RoleDropDownList.SelectedItem.Text)
            {
                case "Dps":
                    cmdUp = new SqlCommand("UPDATE Raids SET DpsHave = DpsHave + 1 WHERE Id =  " + Id, cnn);
                    cmdUp.CommandType = CommandType.Text;
                    cmdUp.ExecuteNonQuery();
                    break;
                case "Healer":
                    cmdUp = new SqlCommand("UPDATE Raids SET HealersHave = HealersHave + 1 WHERE Id =  " + Id, cnn);
                    cmdUp.CommandType = CommandType.Text;
                    cmdUp.ExecuteNonQuery();
                    break;
                case "Tank":
                    cmdUp = new SqlCommand("UPDATE Raids SET TanksHave = TanksHave + 1 WHERE Id =  " + Id, cnn);
                    cmdUp.CommandType = CommandType.Text;
                    cmdUp.ExecuteNonQuery();
                    break;
                default:
                    break;
            }


            cnn.Close();

            Response.Redirect(FriendlyUrl.Href("~/RaidMemebers/Default", Id));
        }

        protected void Cancel(object sender, EventArgs e)
        {
            Response.Redirect("~/Raids/Default.aspx");
        }        
    }
}