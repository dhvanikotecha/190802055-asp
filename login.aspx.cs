﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class login : System.Web.UI.Page
{
    //DeleteCommand="DELETE FROM [Table1] WHERE [id] = @id" 
    //InsertCommand="INSERT INTO [Table1] ([name], [email], [pwd]) VALUES (@name, @email, @pwd)"    
    //SelectCommand="SELECT [id], [name], [email], [pwd] FROM [Table1]" 
    //UpdateCommand="UPDATE [Table1] SET [name] = @name, [email] = @email, [pwd] = @pwd WHERE [id] = @id">
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["DatabaseConnectionString1"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            SqlCommand cmd = new SqlCommand("SELECT COUNT(*) FROM [Table1] WHERE [email]=@email AND [pwd]=@pwd",con);
            cmd.Parameters.AddWithValue("@email",TextBox1.Text);
            cmd.Parameters.AddWithValue("@pwd", TextBox2.Text);
            con.Open();
            int s = (int)cmd.ExecuteScalar();
            if (s==1)
            {
                Session["email"] = TextBox1.Text;
                TextBox1.Text = String.Empty;
                TextBox2.Text = String.Empty;
                Response.Redirect("~/Dashboard.aspx");
            }
            else
            {
                TextBox1.Text = String.Empty;
                TextBox2.Text = String.Empty;
                Literal1.Text="Invalid Username or Password";
            }
            con.Close();
        }
        catch (SqlException ex)
        {
            Response.Write("<script>alert('" + ex.ToString() + "')</script>");
        }
    }
}