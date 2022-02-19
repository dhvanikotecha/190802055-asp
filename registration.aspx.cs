using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class registration : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["DatabaseConnectionString1"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlCommand cmd = new SqlCommand("INSERT INTO [Table1] ([name], [email], [pwd]) VALUES (@name, @email, @pwd)", con);
        cmd.Parameters.AddWithValue("@name", TextBox1.Text);
        cmd.Parameters.AddWithValue("@email", TextBox2.Text);
        cmd.Parameters.AddWithValue("@pwd", TextBox3.Text);
        con.Open();
        int s = cmd.ExecuteNonQuery();
        con.Close();
        if (s == 1)
        {
            TextBox1.Text = String.Empty;
            TextBox2.Text = String.Empty;
            TextBox4.Text = String.Empty;
            Literal1.Text = "Registration Successful";
            Response.Redirect("~/login.aspx");
        }
        else
        {
            TextBox1.Text = String.Empty;
            TextBox2.Text = String.Empty;
            TextBox4.Text = String.Empty;
            Literal1.Text = "Registration not Successful";
        }
    }
}