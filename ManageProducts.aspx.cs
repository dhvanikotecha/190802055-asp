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
    //DeleteCommand="DELETE FROM [product] WHERE [product_id] = @product_id" 
    //InsertCommand="INSERT INTO [product] ([product_name], [product_description], [product_cat_id], [product_status], [image]) VALUES (@product_name, @product_description, @product_cat_id, @product_status, @image)" 
    //SelectCommand="SELECT [product_id], [product_name], [product_description], [product_cat_id], [product_status], [image] FROM [product]" 
    //UpdateCommand="UPDATE [product] SET [product_name] = @product_name, [product_description] = @product_description, [product_cat_id] = @product_cat_id, [product_status] = @product_status, [image] = @image WHERE [product_id] = @product_id">
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["DatabaseConnectionString1"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            binddropdown();
            print();
        }
    }
    public void binddropdown()
    {
        SqlDataAdapter adpt = new SqlDataAdapter("SELECT [id], [category] FROM [category]", con);
        DataTable dt = new DataTable();
        adpt.Fill(dt);
        DropDownList1.DataSource = dt;
        DropDownList1.DataTextField = "category";
        DropDownList1.DataValueField = "id";
        DropDownList1.DataBind();
    }
    public void print()
    {
        SqlDataAdapter adpt = new SqlDataAdapter("SELECT [product_id], [product_name], [product_description], [product_cat_id], [product_status], [image], [id], [category] FROM [product], [category] WHERE [product_cat_id] = [id]", con);
        DataTable dt = new DataTable();
        adpt.Fill(dt);
        GridView1.DataSource = dt;
        GridView1.DataBind();
    }
    public void clear()
    {
        TextBox1.Text = string.Empty;
        TextBox2.Text = string.Empty;
        DropDownList1.SelectedIndex = -1;
        RadioButtonList1.ClearSelection();
        FileUpload1.Attributes.Clear();
        Image3.ImageUrl = string.Empty;
        Literal2.Text = "";
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (Button1.Text == "Submit")
        {
            if (FileUpload1.HasFile)
            {
                FileUpload1.SaveAs(Server.MapPath("~/uploads/" + FileUpload1.FileName));
                SqlCommand cmd = new SqlCommand("INSERT INTO [product] ([product_name], [product_description], [product_cat_id], [product_status], [image]) VALUES (@product_name, @product_description, @product_cat_id, @product_status, @image)", con);
                cmd.Parameters.AddWithValue("@product_name", TextBox1.Text);
                cmd.Parameters.AddWithValue("@product_description", TextBox2.Text);
                cmd.Parameters.AddWithValue("@product_cat_id", Convert.ToInt32(DropDownList1.SelectedItem.Value));
                cmd.Parameters.AddWithValue("@product_status", RadioButtonList1.SelectedValue);
                cmd.Parameters.AddWithValue("@image", FileUpload1.FileName);
                con.Open();
                int s = cmd.ExecuteNonQuery();
                con.Close();
                if (s == 1)
                {
                    print();
                    Literal2.Text = "Data Inserted Successfully";
                }
                else
                {
                    print();
                    Literal2.Text = "Error!!";
                }
                clear();
            }
            else
            {
                Literal2.Text = "Please select Image!";
            }
        }
        else
        {
            if (FileUpload1.HasFile)
            {
                SqlCommand cmd = new SqlCommand("UPDATE [product] SET [product_name] = @product_name, [product_description] = @product_description, [product_cat_id] = @product_cat_id, [product_status] = @product_status, [image] = @image WHERE [product_id] = @product_id", con);
                cmd.Parameters.AddWithValue("@product_name", TextBox1.Text);
                cmd.Parameters.AddWithValue("@product_description", TextBox2.Text);
                cmd.Parameters.AddWithValue("@product_cat_id", Convert.ToInt32(DropDownList1.SelectedValue));
                cmd.Parameters.AddWithValue("@product_status", RadioButtonList1.SelectedValue);
                cmd.Parameters.AddWithValue("@image", FileUpload1.FileName);
                cmd.Parameters.AddWithValue("@product_id", ViewState["product_id"]);
                con.Open();
                int s = cmd.ExecuteNonQuery();
                con.Close();
                if (s == 1)
                {
                    print();
                    Literal2.Text = "Data Updated Successfully";
                    Button1.Text = "Submit";
                }
                else
                {
                    print();
                    Literal2.Text = "Error!!";
                }
                clear();
            }
            else
            {
                Literal2.Text = "Please select Image!";
            }
        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Button btn = (Button)sender;
        SqlCommand cmd = new SqlCommand("DELETE FROM [product] WHERE [product_id] = @product_id", con);
        cmd.Parameters.AddWithValue("@product_id", btn.CommandArgument);
        con.Open();
        int s = cmd.ExecuteNonQuery();
        con.Close();
        if (s == 1)
        {
            print();
            Literal2.Text = "Data Deleted Successfully";
        }
        else
        {
            print();
            Literal2.Text = "Error!!";
        }
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        Button btn = (Button)sender;
        SqlDataAdapter adpt = new SqlDataAdapter("SELECT [product_id], [product_name], [product_description], [product_cat_id], [product_status], [image] FROM [product] WHERE [product_id] = "+btn.CommandArgument, con);
        DataTable dt = new DataTable();
        adpt.Fill(dt);
        TextBox1.Text = dt.Rows[0][1].ToString();
        TextBox2.Text = dt.Rows[0][2].ToString();
        DropDownList1.Text = dt.Rows[0][3].ToString();
        RadioButtonList1.SelectedValue = dt.Rows[0][4].ToString();
        Image3.ImageUrl = "~/uploads/" + dt.Rows[0][5].ToString();
        ViewState["product_id"] = btn.CommandArgument;
        Button1.Text = "Update";
    }
}