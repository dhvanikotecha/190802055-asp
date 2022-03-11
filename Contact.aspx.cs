using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class Default4 : System.Web.UI.Page
{
    //DeleteCommand="DELETE FROM [contact] WHERE [id] = @id" 
    //InsertCommand="INSERT INTO [contact] ([name], [phone], [email], [message]) VALUES (@name, @phone, @email, @message)"  
    //SelectCommand="SELECT [id], [name], [phone], [email], [message] FROM [contact]" 
    //UpdateCommand="UPDATE [contact] SET [name] = @name, [phone] = @phone, [email] = @email, [message] = @message WHERE [id] = @id">

    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["DatabaseConnectionString1"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlCommand cmd = new SqlCommand("INSERT INTO [contact] ([name], [phone], [email], [message]) VALUES (@name, @phone, @email, @message)", con);
        cmd.Parameters.AddWithValue("@name", TextBox1.Text);
        cmd.Parameters.AddWithValue("@phone", TextBox2.Text);
        cmd.Parameters.AddWithValue("@email", TextBox3.Text);
        cmd.Parameters.AddWithValue("@message", TextBox4.Text);
        con.Open();
        int s = cmd.ExecuteNonQuery();
        con.Close();
        if (s==1)
        {
            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";
            TextBox4.Text = "";
        }
    }
}