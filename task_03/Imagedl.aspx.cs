using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace task_03
{
    public partial class Imagedl : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["string"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_Click(object sender, EventArgs e)
        {
            byte[] imagep = image.FileBytes;
            

            SqlCommand cmd = new SqlCommand("insert into productmaster(productname,price,description,productimage) values (@name,@price,@description,@productimage) ", con);
            
            cmd.Parameters.AddWithValue("@name", name.Text);
            cmd.Parameters.AddWithValue("@price", price.Text);
            cmd.Parameters.AddWithValue("@description", description.Text);
            cmd.Parameters.AddWithValue("@productimage", imagep);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
        }
    }
}