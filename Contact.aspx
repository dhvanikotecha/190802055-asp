﻿<%@ Page Title="" Language="C#" MasterPageFile="~/ClientMasterPage.master" AutoEventWireup="true"
    CodeFile="Contact.aspx.cs" Inherits="Default4" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder3" runat="Server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder4" runat="Server">
    <!-- about breadcrumb -->
    <section class="w3l-about-breadcrumb text-left">
    <div class="breadcrumb-bg breadcrumb-bg-about py-sm-5 py-4">
      <div class="container">
        <h2 class="title">Contact</h2>
        <ul class="breadcrumbs-custom-path mt-2">
          <li><a href="#url">Home</a></li>
          <li class="active"><span class="fa fa-arrow-right mx-2" aria-hidden="true"></span> Contact </li>
        </ul>
      </div>
    </div>
  </section>
    <!-- //about breadcrumb -->
    <!-- /contact-->
    <div class="contact-form py-5" id="contact">
        <div class="container py-lg-5 py-md-4">
            <h3 class="hny-title mb-lg-5 mb-4">
                Get in touch</h3>
            <div class="contacts12-main mb-5">
                <form action="https://sendmail.w3layouts.com/submitForm" method="post">
                <div class="main-input">
                    <div class="d-grid">
                        <input type="text" name="w3lName" id="w3lName" placeholder="Your Name" class="contact-input" />
                        <input type="text" name="w3lPhone" id="w3lPhone" placeholder="Phone Number" class="contact-input" />
                    </div>
                    <div class="d-grid">
                        <input type="email" name="w3lSender" id="w3lSender" placeholder="Your Email id" class="contact-input"
                            required />
                        <input type="text" name="w3lSubject" id="w3lSubject" placeholder="Subject" class="contact-input" />
                    </div>
                </div>
                <textarea class="contact-textarea" name="w3lMessage" id="w3lMessage" placeholder="Type your message here"
                    required></textarea>
                <div class="text-right">
                    <button class="btn btn-style btn-primary btn-contact">
                        Submit Now</button>
                </div>
                </form>
            </div>
            <div class="row pt-lg-4">
                <div class="col-md-12">
                    <div class="row">
                        <div class="col-lg-4 col-md-6">
                            <div class="contact-address">
                                <ul>
                                    <li class="icon-color"><span class="fa fa-map-marker"></span><span>703 Homestead Street
                                        <br>
                                        Waltham, MA 02453</span> </li>
                                </ul>
                            </div>
                        </div>
                        <div class="col-lg-4 col-md-6 mt-md-0 mt-4">
                            <div class="contact-address">
                                <ul>
                                    <li class="icon-color"><span class="fa fa-phone"></span><span><a class="" href="tel:+(21)-234-9999">
                                        Phone :+(21)-234-9999</a> <a class="" href="tel:+(21)-234-8888">Fax :+(21)-234-8888</a></span></li>
                                </ul>
                            </div>
                        </div>
                        <div class="col-lg-4 col-md-6 mt-lg-0 mt-4">
                            <div class="contact-address">
                                <ul>
                                    <li class="icon-color"><span class="fa fa-mail-reply"></span><span><a href="mailto:travel@mail.com">
                                        Livefloor@mail.com</a> <a href="mailto:info@travel.com">info@Livefloor1.com</a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="maphny">
        <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d387190.2895687731!2d-74.26055986835598!3d40.697668402590374!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x89c24fa5d33f083b%3A0xc80b8f06e177fe62!2sNew+York%2C+NY%2C+USA!5e0!3m2!1sen!2sin!4v1562582305883!5m2!1sen!2sin"
            frameborder="0" style="border: 0" allowfullscreen=""></iframe>
    </div>
    <!--//contact-->
</asp:Content>
