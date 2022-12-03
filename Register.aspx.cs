using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Data.SqlTypes;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace User_Records___Skill_Assessment
{
    public partial class _Default : Page
    {
        public String errorMessage = "";
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        
        protected void Button1_Click(object sender, EventArgs e)
        {
            string uname = TextBox1.Text;
            int uno = int.Parse(TextBox2.Text);
            DateTime cdate = DateTime.Now;
            SqlConnection con = new SqlConnection("Data Source=.\\sqlexpress;Initial Catalog=UserRecords;Integrated Security=True");
            con.Open();
            SqlCommand co = new SqlCommand("SA_AddUserRecords", con);
            co.CommandType = CommandType.StoredProcedure;
            co.Parameters.AddWithValue("@UserName", uname);
            co.Parameters.AddWithValue("@UserNo", uno);
            co.Parameters.AddWithValue("@CreateDate", cdate);
            co.ExecuteNonQuery();
            con.Close();
            ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Successfully Created');",true);
        }

       
    }
}