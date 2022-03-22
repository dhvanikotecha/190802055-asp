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
    //DeleteCommand="DELETE FROM [service] WHERE [id] = @id" 
    //InsertCommand="INSERT INTO [service] ([title], [description], [status]) VALUES (@title, @description, @status)"  
    //SelectCommand="SELECT [id], [title], [description], [status] FROM [service]" 
    //UpdateCommand="UPDATE [service] SET [title] = @title, [description] = @description, [status] = @status WHERE [id] = @id">
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["DatabaseConnectionString1"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        print();
        Literal7.Text = "";
        Literal8.Text = "";
        Literal9.Text = "";
    }
    public void print()
    {
        SqlDataAdapter adpt = new SqlDataAdapter("SELECT [id], [title], [description], [status] FROM [service]", con);
        DataTable dt = new DataTable();
        adpt.Fill(dt);
        GridView1.DataSource = dt;
        GridView1.DataBind();
    }
    protected void RadioButtonList1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (Button1.Text == "Update")
        {
            if (TextBox1.Text == String.Empty || TextBox2.Text == String.Empty || RadioButtonList1.SelectedItem == null)
            {
                if (TextBox1.Text == String.Empty)
                {
                    Literal7.Text = "<span style='color:red'> Please Enter Title* </span>";
                }
                if (TextBox2.Text == String.Empty)
                {
                    Literal8.Text = "<span style='color:red'> Please Enter Description* </span>";
                }
                if (RadioButtonList1.SelectedItem == null)
                {
                    Literal9.Text = "<span style='color:red'> Please Select Status* </span>";
                }
            }
            else
            {
                SqlCommand cmd = new SqlCommand("UPDATE [service] SET [title] = @title, [description] = @description, [status] = @status WHERE [id] = @id", con);
                cmd.Parameters.AddWithValue("@title", TextBox1.Text);
                cmd.Parameters.AddWithValue("@description", TextBox2.Text);
                cmd.Parameters.AddWithValue("@status", RadioButtonList1.SelectedValue);
                cmd.Parameters.AddWithValue("@id", ViewState["service_id"]);
                con.Open();
                int s = cmd.ExecuteNonQuery();
                con.Close();
                if (s == 1)
                {
                    Literal2.Text = "Record Updated Successfully";
                    Button1.Text = "Submit";
                    TextBox1.Text = "";
                    TextBox2.Text = "";
                    RadioButtonList1.ClearSelection();
                    Literal2.Text = "";
                }
                else
                {
                    Literal2.Text = "Error!";
                    Button1.Text = "Submit";
                    TextBox1.Text = "";
                    TextBox2.Text = "";
                    RadioButtonList1.ClearSelection();
                    Literal2.Text = "";
                }
                print();
            }
        }
        else
        {
            if (TextBox1.Text == String.Empty || TextBox2.Text == String.Empty || RadioButtonList1.SelectedItem == null)
            {
                if (TextBox1.Text == String.Empty)
                {
                    Literal7.Text = "<span style='color:red'> Please Enter Title* </span>";
                }
                if (TextBox2.Text == String.Empty)
                {
                    Literal8.Text = "<span style='color:red'> Please Enter Description* </span>";
                }
                if (RadioButtonList1.SelectedItem == null)
                {
                    Literal9.Text = "<span style='color:red'> Please Select Status* </span>";
                }
            }
            else
            {
                SqlCommand cmd = new SqlCommand("INSERT INTO [service] ([title], [description], [status]) VALUES (@title, @description, @status)", con);
                cmd.Parameters.AddWithValue("@title", TextBox1.Text);
                cmd.Parameters.AddWithValue("@description", TextBox2.Text);
                cmd.Parameters.AddWithValue("@status", RadioButtonList1.SelectedValue);
                con.Open();
                int s = cmd.ExecuteNonQuery();
                con.Close();
                if (s == 1)
                {
                    Literal2.Text = "Record Inserted Successfully";
                    TextBox1.Text = "";
                    TextBox2.Text = "";
                    RadioButtonList1.ClearSelection();
                    Literal2.Text = "";
                }
                else
                {
                    Literal2.Text = "Error!";
                    TextBox1.Text = "";
                    TextBox2.Text = "";
                    RadioButtonList1.ClearSelection();
                    Literal2.Text = "";
                }
                print();
            }
        }
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        Button btn = (Button)sender;
        SqlCommand cmd = new SqlCommand("DELETE FROM [service] WHERE [id] = @id", con);
        cmd.Parameters.AddWithValue("@id", btn.CommandArgument);
        con.Open();
        int s = cmd.ExecuteNonQuery();
        con.Close();
        if (s == 1)
        {
            Literal2.Text = "Record Deleted Successfully";
            TextBox1.Text = "";
            TextBox2.Text = "";
            RadioButtonList1.ClearSelection();
            Literal2.Text = "";
        }
        else
        {
            Literal2.Text = "Error!";
            TextBox1.Text = "";
            TextBox2.Text = "";
            RadioButtonList1.ClearSelection();
            Literal2.Text = "";
        }
        print();
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        Button btn = (Button)sender;
        SqlDataAdapter adpt = new SqlDataAdapter("SELECT [id], [title], [description], [status] FROM [service] WHERE [id] = "+btn.CommandArgument, con);
        DataTable dt = new DataTable();
        adpt.Fill(dt);
        TextBox1.Text = dt.Rows[0][1].ToString();
        TextBox2.Text = dt.Rows[0][2].ToString();
        RadioButtonList1.SelectedValue = dt.Rows[0][3].ToString();
        ViewState["service_id"] = btn.CommandArgument;
        Button1.Text = "Update";
    }
}