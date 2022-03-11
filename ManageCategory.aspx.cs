using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class _Default : System.Web.UI.Page
{
    //DeleteCommand="DELETE FROM [category] WHERE [id] = @id" 
    //InsertCommand="INSERT INTO [category] ([category], [status]) VALUES (@category, @status)"  
    //SelectCommand="SELECT [id], [category], [status] FROM [category]" 
    //UpdateCommand="UPDATE [category] SET [category] = @category, [status] = @status WHERE [id] = @id">

    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["DatabaseConnectionString1"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        print();
    }
    public void print()
    {
        SqlDataAdapter adpt = new SqlDataAdapter("SELECT [id], [category], [status] FROM [category]", con);
        DataTable dt = new DataTable();
        adpt.Fill(dt);
        GridView1.DataSource = dt;
        GridView1.DataBind();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (Button1.Text=="Update")
        {
            SqlCommand cmd = new SqlCommand("UPDATE [category] SET [category] = @category, [status] = @status WHERE [id] = @id", con);
            cmd.Parameters.AddWithValue("@category", TextBox1.Text);
            cmd.Parameters.AddWithValue("@status", RadioButtonList1.SelectedValue);
            cmd.Parameters.AddWithValue("@id", ViewState["category_id"]);
            con.Open();
            int s = cmd.ExecuteNonQuery();
            con.Close();
            if (s == 1)
            {
                Literal2.Text = "Record Updated Successfully";
                Button1.Text = "Submit";
                TextBox1.Text = "";
                RadioButtonList1.ClearSelection();
            }
            else
            {
                Literal2.Text = "Error!";
                Button1.Text = "Submit";
                TextBox1.Text = "";
                RadioButtonList1.ClearSelection();
            }
            print();
        }
        else
        {
            SqlCommand cmd = new SqlCommand("INSERT INTO [category] ([category], [status]) VALUES (@category, @status)", con);
            cmd.Parameters.AddWithValue("@category",TextBox1.Text);
            cmd.Parameters.AddWithValue("@status", RadioButtonList1.SelectedValue);
            con.Open();
            int s=cmd.ExecuteNonQuery();
            con.Close();
            if (s==1)
            {
                Literal2.Text = "Record Inserted Successfully";
                TextBox1.Text = "";
                RadioButtonList1.ClearSelection();
            }
            else
            {
                Literal2.Text = "Error!";
                TextBox1.Text = "";
                RadioButtonList1.ClearSelection();
            }
            print();
        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Button btn = (Button)sender;
        SqlCommand cmd = new SqlCommand("DELETE FROM [category] WHERE [id] = @id", con);
        cmd.Parameters.AddWithValue("@id", btn.CommandArgument);
        con.Open();
        int s = cmd.ExecuteNonQuery();
        con.Close();
        if (s == 1)
        {
            Literal2.Text = "Record Deleted Successfully";
            TextBox1.Text = "";
            RadioButtonList1.ClearSelection();
        }
        else
        {
            Literal2.Text = "Error!";
            TextBox1.Text = "";
            RadioButtonList1.ClearSelection();
        }
        print();
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        Button btn = (Button)sender;
        SqlDataAdapter adpt = new SqlDataAdapter("SELECT [id], [category], [status] FROM [category] WHERE [id] = "+btn.CommandArgument, con);
        DataTable dt = new DataTable();
        adpt.Fill(dt);
        TextBox1.Text=dt.Rows[0][1].ToString();
        RadioButtonList1.SelectedValue=dt.Rows[0][2].ToString();
        Button1.Text = "Update";
        ViewState["category_id"]=btn.CommandArgument;
    }
}