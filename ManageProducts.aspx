<%@ Page Title="" Language="C#" EnableEventValidation="false" MasterPageFile="~/AdminMasterPage.master" AutoEventWireup="true" CodeFile="ManageProducts.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
<!--main content start-->
	<section class="wrapper">
	<div class="form-w3layouts">
        <!-- page start-->
        <div class="row">
            <div class="col-lg-12">
                    <section class="panel">
                        <header class="panel-heading">
                            Manage Products
                        </header>
                        <div class="panel-body">
                            <div class="position-center">
                                <form role="form">
                                <div class="form-group">
                                    <label for="exampleInputEmail1">Product Name</label>
                                    <asp:TextBox ID="TextBox1" runat="server" class="form-control" placeholder="Enter title"></asp:TextBox>                               
                                    <br />
                                </div>
                                <div class="form-group">
                                    <label for="exampleInputEmail1">Description</label>
                                    <asp:TextBox ID="TextBox2" runat="server" class="form-control" placeholder="Enter title"></asp:TextBox>                               
                                    <br />
                                </div>
                                <div class="form-group">
                                    <label for="exampleInputEmail1">Product Category</label><br />
                                    <asp:DropDownList ID="DropDownList1" runat="server"></asp:DropDownList>                              
                                    <br />
                                </div>
                                <div class="form-group">
                                    <label for="exampleInputPassword1">Status</label>
                                    <br />
                                    <asp:RadioButtonList ID="RadioButtonList1" runat="server" 
                                        RepeatDirection="Horizontal">
                                        <asp:ListItem Value="1">Active </asp:ListItem>
                                        <asp:ListItem Value="0">Deactive</asp:ListItem>
                                    </asp:RadioButtonList>
                                    <br/>
                                </div>
                                <div class="form-group">
                                    <label for="exampleInputFile">Select Image</label>
                                    <asp:FileUpload ID="FileUpload1" class="form-control" runat="server"></asp:FileUpload>
                                </div>
                                <div class="form-group">
                                    <label for="exampleInputFile">Product Image</label>
                                </div>
                                <div class="form-group">
                                    <asp:Image ID="Image3" runat="server" Height="100px" Width="100px"></asp:Image>
                                </div>
                                <div class="checkbox">
                                    <asp:Literal ID="Literal2" runat="server"></asp:Literal>
                                </div>
                                <div class="checkbox">
                                    <asp:Button ID="Button1" runat="server" Text="Submit" onclick="Button1_Click"></asp:Button>        
                                    <br />
                                </div>
                                </form>
                                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                                        BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" 
                                        CellPadding="4" ForeColor="Black" Width="697px">
                                        <AlternatingRowStyle BackColor="White" />
                                        <Columns>
                                            <asp:TemplateField HeaderText="ID">
                                                <ItemTemplate>
                                                    <asp:Literal ID="Literal3" runat="server" Text='<%# Eval("product_id") %>'></asp:Literal>
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                            <asp:TemplateField HeaderText="Name">
                                                <ItemTemplate>
                                                    <asp:Literal ID="Literal4" runat="server" Text='<%# Eval("product_name") %>'></asp:Literal>
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                            <asp:TemplateField HeaderText="Description">
                                                <ItemTemplate>
                                                    <asp:Literal ID="Literal5" runat="server" 
                                                        Text='<%# Eval("product_description") %>'></asp:Literal>
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                            <asp:TemplateField HeaderText="Category ID">
                                                <ItemTemplate>
                                                    <asp:Literal ID="Literal6" runat="server" Text='<%# Eval("product_cat_id") %>'></asp:Literal>
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                            <asp:TemplateField HeaderText="Status">
                                                <ItemTemplate>
                                                    <asp:Literal ID="Literal7" runat="server" Text='<%# Eval("product_status") %>'></asp:Literal>
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                            <asp:TemplateField HeaderText="Image">
                                                <ItemTemplate>
                                                    <asp:Image ID="Image4" runat="server" Height="100px" 
                                                        ImageUrl='<%# Eval("image", "~/uploads/{0}") %>' Width="100px" />
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                            <asp:TemplateField HeaderText="Delete">
                                                <ItemTemplate>
                                                    <asp:Button ID="Button2" runat="server" CommandArgument='<%# Eval("product_id") %>' 
                                                        onclick="Button2_Click" Text="Delete" />
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                            <asp:TemplateField HeaderText="Edit">
                                                <ItemTemplate>
                                                    <asp:Button ID="Button3" runat="server" CommandArgument='<%# Eval("product_id") %>' 
                                                        onclick="Button3_Click" Text="Edit" />
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                        </Columns>
                                        <FooterStyle BackColor="#CCCC99" />
                                        <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
                                        <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Center" 
                                            VerticalAlign="Middle" />
                                        <RowStyle BackColor="#F7F7DE" HorizontalAlign="Center" VerticalAlign="Middle" />
                                        <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
                                        <SortedAscendingCellStyle BackColor="#FBFBF2" />
                                        <SortedAscendingHeaderStyle BackColor="#848384" />
                                        <SortedDescendingCellStyle BackColor="#EAEAD3" />
                                        <SortedDescendingHeaderStyle BackColor="#575357" />
                                    </asp:GridView>
                            </div>
                        </div>
                    </section>
            </div>                 
        <!-- page end-->
        </div>
</section>
<!--main content end-->
    </div>
</asp:Content>

