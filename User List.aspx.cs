using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;
using System.Drawing;
using System.Security.Cryptography;

namespace User_Records___Skill_Assessment
{
    public partial class Contact : Page
    {

        SqlConnection con = new SqlConnection("Data Source=.\\sqlexpress;Initial Catalog=UserRecords;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                EditRecord();
            }
        }

       protected void EditRecord()
        {
            SqlConnection con = new SqlConnection("Data Source=.\\sqlexpress;Initial Catalog=UserRecords;Integrated Security=True");
            con.Open();
            SqlCommand comm = new SqlCommand("exec SA_SelectUserRecords", con);
            SqlDataAdapter d = new SqlDataAdapter(comm);
            DataSet dt = new DataSet();
            d.Fill(dt);
            con.Close();

            if (dt.Tables[0].Rows.Count > 0)
            {
                GridView1.DataSource = dt;
                GridView1.DataBind();
            }
            else
            {
                dt.Tables[0].Rows.Add(dt.Tables[0].NewRow());
                GridView1.DataSource = dt;
                GridView1.DataBind();
                int columncount = GridView1.Rows[0].Cells.Count;
                GridView1.Rows[0].Cells.Clear();
                GridView1.Rows[0].Cells.Add(new TableCell());
                GridView1.Rows[0].Cells[0].ColumnSpan = columncount;
                GridView1.Rows[0].Cells[0].Text = "Data not found...";

            }
        }
        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
       protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GridView1.EditIndex = e.NewEditIndex;
            EditRecord();
        }

       protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
       {
            GridView1.EditIndex = -1;
            EditRecord();
        }

        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            
                int UserID = Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Values["UserID"].ToString());
                string uname = (GridView1.Rows[e.RowIndex].FindControl("txtuname") as TextBox).Text.Trim();
                int uno = Convert.ToInt32((GridView1.Rows[e.RowIndex].FindControl("txtuno") as TextBox).Text.Trim());

            SqlConnection con = new SqlConnection("Data Source=.\\sqlexpress;Initial Catalog=UserRecords;Integrated Security=True");
            con.Open();
            //SqlCommand up = new SqlCommand("exec SA_UpdateUserRecords'"+uname+"','"+uno+"','"+UserID+"'", con);
            SqlCommand up = new SqlCommand("SA_UpdateUserRecords", con);
            up.CommandType = CommandType.StoredProcedure;
            up.Parameters.AddWithValue("@UserID", UserID);
            up.Parameters.AddWithValue("@UserName", uname);
            up.Parameters.AddWithValue("@UserNo", uno);
            up.ExecuteNonQuery();
            GridView1.EditIndex = -1;
            EditRecord();
            con.Close();
            ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Successfully Updated');", true);
        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            int uid = Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Values["UserID"].ToString());
            SqlConnection con = new SqlConnection("Data Source=.\\sqlexpress;Initial Catalog=UserRecords;Integrated Security=True");
            con.Open();
            SqlCommand del = new SqlCommand("SA_DeleteUserRecords", con);
            del.CommandType = CommandType.StoredProcedure;
            del.Parameters.AddWithValue("@UserID", uid);
            del.ExecuteNonQuery();
            GridView1.EditIndex = -1;
            EditRecord();
            con.Close();
            ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Successfully Deleted');", true);
        }
     
    }
}