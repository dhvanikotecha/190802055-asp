﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="registration.aspx.cs" Inherits="registration" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Registration</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="keywords" content="Visitors Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
    <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
    <!-- bootstrap-css -->
    <link rel="stylesheet" href="src/css/bootstrap.min.css">
    <!-- //bootstrap-css -->
    <!-- Custom CSS -->
    <link href="src/css/style.css" rel='stylesheet' type='text/css' />
    <link href="src/css/style-responsive.css" rel="stylesheet" />
    <!-- font CSS -->
    <link href='//fonts.googleapis.com/css?family=Roboto:400,100,100italic,300,300italic,400italic,500,500italic,700,700italic,900,900italic'
        rel='stylesheet' type='text/css'>
    <!-- font-awesome icons -->
    <link rel="stylesheet" href="src/css/font.css" type="text/css" />
    <link href="src/css/font-awesome.css" rel="stylesheet">
    <!-- //font-awesome icons -->
    <script src="src/js/jquery2.0.3.min.js"></script>
</head>
<body>
    <div class="reg-w3">
        <div class="w3layouts-main">
            <h2>Register Now</h2>
            <form id="form1" runat="server">
            <asp:TextBox ID="TextBox1" runat="server" class="ggg" name="Name" 
                placeholder="NAME" Width="578px"></asp:TextBox>          
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                ControlToValidate="TextBox1" Display="Dynamic" 
                ErrorMessage="Please Enter Name*" ForeColor="Red" Width="519px"></asp:RequiredFieldValidator>
            <asp:TextBox ID="TextBox2" runat="server" class="ggg" name="Email" 
                placeholder="E-MAIL" Width="579px"></asp:TextBox>            
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                ControlToValidate="TextBox2" Display="Dynamic" 
                ErrorMessage="Please Enter E-mail*" ForeColor="Red" Width="525px"></asp:RequiredFieldValidator>
            <asp:TextBox ID="TextBox3" runat="server" class="ggg" name="Phone" 
                placeholder="PASSWORD" Width="577px" TextMode="Password"></asp:TextBox>            
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                ControlToValidate="TextBox3" Display="Dynamic" 
                ErrorMessage="Please Enter Password*" ForeColor="Red" Width="536px"></asp:RequiredFieldValidator>
            <asp:TextBox ID="TextBox4" runat="server" class="ggg" name="Password" 
                placeholder="CONFIRM PASSWORD" Width="574px"></asp:TextBox>          
            <h4>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                    ControlToValidate="TextBox4" Display="Dynamic" 
                    ErrorMessage="Please Enter Confirm Password*" ForeColor="Red" Width="573px"></asp:RequiredFieldValidator>
                <asp:CompareValidator ID="CompareValidator1" runat="server" 
                    ControlToCompare="TextBox4" ControlToValidate="TextBox3" Display="Dynamic" 
                    ErrorMessage="Password does not match" ForeColor="#FF3300" Width="576px"></asp:CompareValidator>
                <input type="checkbox" />I agree to the Terms of Service and Privacy Policy</h4>
            <div class="clearfix">
            </div>
            <asp:Button ID="Button1" runat="server" Text="submit" onclick="Button1_Click" />
            <asp:Literal ID="Literal1" runat="server"></asp:Literal>
            </form>
            <p>
                Already Registered.<a href="login.aspx">Login</a></p>
        </div>
    </div>
    <script src="src/js/bootstrap.js"></script>
    <script src="src/js/jquery.dcjqaccordion.2.7.js"></script>
    <script src="src/js/scripts.js"></script>
    <script src="src/js/jquery.slimscroll.js"></script>
    <script src="src/js/jquery.nicescroll.js"></script>
    <!--[if lte IE 8]><script language="javascript" type="text/javascript" src="src/js/flot-chart/excanvas.min.js"></script><![endif]-->
    <script src="src/js/jquery.scrollTo.js"></script>
</body>
</html>
