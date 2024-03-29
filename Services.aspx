﻿<%@ Page Title="" Language="C#" MasterPageFile="~/ClientMasterPage.master" AutoEventWireup="true"
    CodeFile="Services.aspx.cs" Inherits="Default3" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder3" runat="Server">
    <!-- about breadcrumb -->
    <section class="w3l-about-breadcrumb text-left">
    <div class="breadcrumb-bg breadcrumb-bg-about py-sm-5 py-4">
      <div class="container">
        <h2 class="title">Services</h2>
        <ul class="breadcrumbs-custom-path mt-2">
          <li><a href="#url">Home</a></li>
          <li class="active"><span class="fa fa-arrow-right mx-2" aria-hidden="true"></span> Services </li>
        </ul>
      </div>
    </div>
  </section>
    <!-- //about breadcrumb -->
    <!-- call to action 5 -->
    <section class="w3l-cta5">
  <div class="call-to-action-5 py-5">
    <div class="container py-lg-5">
      <div class="call-to-action-5-content text-center">
        <h3 class="hny-title">Start learning for bright future</h3>
        <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Possimus sapiente commodi maiores ullam est nostrum aliquam!</p>
        <a href="#url" class="btn btn-style btn-primary mb-4">Read More</a>
        <div class="three-grids d-grid grid-columns-3">
          <div class="grid">
            <div class="icon">
              <span class="fa fa-graduation-cap" aria-hidden="true"></span>
            </div>
            <div class="icon-info">
              <h4><a href="#">Creative Designers</a></h4>
              <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ab sint consectetur quasi mollitia? Qui, nihil?</p>
            </div>
          </div>
          <div class="grid">
            <div class="icon">
              <span class="fa fa-check-square-o" aria-hidden="true"></span>
            </div>
            <div class="icon-info">
              <h4><a href="#">Quality Products</a></h4>
              <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ab sint consectetur quasi mollitia? Qui, nihil?</p>
            </div>
          </div>
          <div class="grid">
            <div class="icon">
              <span class="fa fa-book" aria-hidden="true"></span>
            </div>
            <div class="icon-info">
              <h4><a href="#">Free Consultation</a></h4>
              <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ab sint consectetur quasi mollitia? Qui, nihil?</p>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</section>
    <!-- /call to action 5 -->
    <section class="w3l-features14">
  <div class="w3l-feature-6-main py-5">
    <div class="container py-lg-5">
      <div class="wrapper-max">
        <div class="header-section text-center mb-5">
          <h6 class="sub-title">Services We Do</h6>
          <h3 class="hny-title two">
            We are the best Interior designer since 1975.
          </h3>
        </div>
        <div class="grid mt-0">
        <asp:Repeater ID="Repeater1" runat="server">
        <ItemTemplate>
        <div class="w3l-feature-6-gd">
            <div class="icon"><span class="fa fa-building-o"></span></div>
            <div class="w3l-feature-6-gd-info">
              <h3><a href="#url"><%# Eval("title") %></a></h3>
              <p><%# Eval("description") %></p>
            </div>
          </div>
        </ItemTemplate>
        </asp:Repeater>
        </div>
      </div>
    </div>
    </div>
</section>
    <!--/-->
    <section class="w3l-grids1">
  <div class="hny-three-grids py-5">
    <div class="container py-lg-5">
      <div class="row">
        <div class="col-md-4 col-sm-6 mt-0 grids5-info">
          <a href="#url"><img src="asset/images/g1.jpg" class="img-fluid" alt=""></a>
          <h5>Lorem</h5>
          <h4><a href="#url">5-Year Warranty</a></h4>
          <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Veniam esse? dolores impedit doloremque.</p>
        </div>
        <div class="col-md-4 col-sm-6 mt-sm-0 mt-5 grids5-info">
          <a href="#url"><img src="asset/images/g2.jpg" class="img-fluid" alt=""></a>
          <h5>Lorem</h5>
          <h4><a href="#url">45-day Installation</a></h4>
          <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Veniam esse? dolores impedit doloremque.</p>
        </div>
        <div class="col-md-4 col-sm-6 mt-md-0 mt-5 grids5-info">
          <a href="#url"><img src="asset/images/g3.jpg" class="img-fluid" alt=""></a>
          <h5>Lorem</h5>
          <h4><a href="#url">Post-Installation Service</a></h4>
          <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Veniam esse? dolores impedit doloremque.</p>
        </div>
      </div>
    </div>
  </div>
</section>
    <!--//-->
</asp:Content>
