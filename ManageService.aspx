<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMasterPage.master" AutoEventWireup="true" CodeFile="ManageService.aspx.cs" Inherits="_Default" enableEventValidation="false"%>

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
                            Manage Services
                        </header>
                        <div class="panel-body">
                            <div class="position-center">
                                <form role="form">
                                <div class="form-group">
                                    <label for="exampleInputEmail1">Title</label>
                                    <asp:TextBox ID="TextBox1" runat="server" class="form-control" placeholder="Enter title"></asp:TextBox>                               
                                </div>
                                <div class="form-group">
                                    <label for="exampleInputEmail1">Descriptiion</label>
                                    <asp:TextBox ID="TextBox2" runat="server" class="form-control" 
                                        placeholder="Enter Description" Rows="5" TextMode="MultiLine"></asp:TextBox>                               
                                </div>
                                <div class="form-group">
                                    <label for="exampleInputPassword1">Status</label>
                                    <br />
                                    <asp:RadioButtonList ID="RadioButtonList1" runat="server" 
                                        RepeatDirection="Horizontal" 
                                        onselectedindexchanged="RadioButtonList1_SelectedIndexChanged">
                                        <asp:ListItem Value="1">Active </asp:ListItem>
                                        <asp:ListItem Value="0"> Deactive</asp:ListItem>
                                    </asp:RadioButtonList>
                                    <br />
                                    <asp:Literal ID="Literal2" runat="server"></asp:Literal>
                                    <br />
                                </div>
                                    <asp:Button ID="Button1" runat="server" Text="Submit" 
                                    onclick="Button1_Click"></asp:Button>        
                                <br />
                                <br />
                                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                                    BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" 
                                    CellPadding="4" ForeColor="Black" Width="481px">
                                    <AlternatingRowStyle BackColor="White" />
                                    <Columns>
                                        <asp:TemplateField HeaderText="ID">
                                            <ItemTemplate>
                                                <asp:Literal ID="Literal3" runat="server" Text='<%# Eval("id") %>'></asp:Literal>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Title">
                                            <ItemTemplate>
                                                <asp:Literal ID="Literal4" runat="server" Text='<%# Eval("title") %>'></asp:Literal>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Description">
                                            <ItemTemplate>
                                                <asp:Literal ID="Literal5" runat="server" Text='<%# Eval("description") %>'></asp:Literal>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Status">
                                            <ItemTemplate>
                                                <asp:Literal ID="Literal6" runat="server" Text='<%# Eval("status") %>'></asp:Literal>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Delete">
                                            <ItemTemplate>
                                                <asp:Button ID="Button2" runat="server" CommandArgument='<%# Eval("id") %>' 
                                                    onclick="Button2_Click" Text="Delete" />
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Edit">
                                            <ItemTemplate>
                                                <asp:Button ID="Button3" runat="server" onclick="Button3_Click" Text="Edit" 
                                                    CommandArgument='<%# Eval("id") %>' />
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                    </Columns>
                                    <FooterStyle BackColor="#CCCC99" />
                                    <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" 
                                        HorizontalAlign="Center" VerticalAlign="Middle" />
                                    <PagerStyle BackColor="#F7F7DE" BorderStyle="Solid" ForeColor="Black" 
                                        HorizontalAlign="Right" />
                                    <RowStyle BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" 
                                        HorizontalAlign="Center" VerticalAlign="Middle" BackColor="#F7F7DE" />
                                    <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
                                    <SortedAscendingCellStyle BackColor="#FBFBF2" />
                                    <SortedAscendingHeaderStyle BackColor="#848384" />
                                    <SortedDescendingCellStyle BackColor="#EAEAD3" />
                                    <SortedDescendingHeaderStyle BackColor="#575357" />
                                </asp:GridView>
                                <br />
                                <br />
                            </form>
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

