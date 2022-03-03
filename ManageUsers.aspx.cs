using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class Default2 : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["DatabaseConnectionString1"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        print();
    }
    public void print()
    {
        SqlDataAdapter adpt = new SqlDataAdapter("SELECT [id], [name], [email], [pwd] FROM [Table1]", con);
        DataTable dt = new DataTable();
        adpt.Fill(dt);
        GridView1.DataSource = dt;
        GridView1.DataBind();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Button btn = (Button)sender;
        SqlCommand cmd = new SqlCommand("DELETE FROM [Table1] WHERE [id] = @id", con);
        cmd.Parameters.AddWithValue("@id",btn.CommandArgument);
        con.Open();
        cmd.ExecuteNonQuery();
        con.Close();
        print();
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Button btn = (Button)sender;
        SqlDataAdapter adpt = new SqlDataAdapter("SELECT [id], [name], [email], [pwd] FROM [Table1] WHERE [id] = "+btn.CommandArgument, con);
        DataTable dt = new DataTable();
        adpt.Fill(dt);
        TextBox3.Text = dt.Rows[0][1].ToString();
        TextBox1.Text = dt.Rows[0][2].ToString();
        TextBox2.Text = dt.Rows[0][3].ToString();
        print();
    }
    protected void Button3_Click(object sender, EventArgs e)
    {

    }
}