﻿<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMasterPage.master" EnableEventValidation="false" AutoEventWireup="true" CodeFile="ManageCategory.aspx.cs" Inherits="_Default" %>

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
                            Manage Category
                        </header>
                        <div class="panel-body">
                            <div class="position-center">
                                <form role="form">
                                <div class="form-group">
                                    <label for="exampleInputEmail1">Category</label>
                                    <asp:TextBox ID="TextBox1" runat="server" class="form-control" placeholder="Enter title"></asp:TextBox>                               
                                    <br />
                                </div>
                                <div class="form-group">
                                    <label for="exampleInputPassword1">Status</label>
                                    <br />
                                    <asp:RadioButtonList ID="RadioButtonList1" runat="server" 
                                        RepeatDirection="Horizontal">
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
                                <br />
                            </form>
                                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                                    BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" 
                                    CellPadding="4" ForeColor="Black" GridLines="Horizontal" Width="436px">
                                    <Columns>
                                        <asp:TemplateField HeaderText="ID">
                                            <ItemTemplate>
                                                <asp:Literal ID="Literal3" runat="server" Text='<%# Eval("id") %>'></asp:Literal>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Category">
                                            <ItemTemplate>
                                                <asp:Literal ID="Literal4" runat="server" Text='<%# Eval("category") %>'></asp:Literal>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Status">
                                            <ItemTemplate>
                                                <asp:Literal ID="Literal5" runat="server" Text='<%# Eval("status") %>'></asp:Literal>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Delete">
                                            <ItemTemplate>
                                                <asp:Button ID="Button2" runat="server" CommandArgument='<%# Eval("id") %>' 
                                                    onclick="Button2_Click" Text="Delete" />
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Update">
                                            <ItemTemplate>
                                                <asp:Button ID="Button3" runat="server" CommandArgument='<%# Eval("id") %>' 
                                                    onclick="Button3_Click" Text="Update" />
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                    </Columns>
                                    <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                                    <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
                                    <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                                    <RowStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                    <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                                    <SortedAscendingCellStyle BackColor="#F7F7F7" />
                                    <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
                                    <SortedDescendingCellStyle BackColor="#E5E5E5" />
                                    <SortedDescendingHeaderStyle BackColor="#242121" />
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

