using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;


namespace refreshLogin
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            lblErrormsg.Visible = false;
        }

        protected void Loginbtn_Click(object sender, EventArgs e)
        {
            MySqlConnection constr = new MySqlConnection("server=192.168.0.25; user id=root; password=Kinder7apple!;database=lifterdb; Integrated Security=True;");
            constr.Open();
            string query = "select count(1) from lifterdb.usertable where UserName =@user and Password = @password";
            using (MySqlCommand cmd = new MySqlCommand(query, constr))
            {
                cmd.Parameters.AddWithValue("@user",UserBox.Text.Trim());
                cmd.Parameters.AddWithValue("@password",PasswordBox.Text.Trim());
                int count = Convert.ToInt32(cmd.ExecuteScalar());
                if(count == 1)
                {
                    Session["UserName"] = UserBox.Text.Trim();
                    Response.Redirect("Dashboard.aspx");
                }
                else
                {
                    lblErrormsg.Visible = true;
                }
            }


        }
    }
}