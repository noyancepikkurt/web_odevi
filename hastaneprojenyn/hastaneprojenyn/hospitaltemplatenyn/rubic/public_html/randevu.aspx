<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="randevu.aspx.cs" Inherits="hastaneprojenyn.hospitaltemplatenyn.rubic.public_html.randevu" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"/>
    <meta name="description" content="Start your development with Rubic landing page."/>
    <meta name="author" content="Devcrud"/>
    <title>Kartal uygulaması</title>
    <link rel="stylesheet" href="assets/vendors/themify-icons/css/themify-icons.css"/>
	<link rel="stylesheet" href="assets/css/rubic.css"/>
</head>
<body data-spy="scroll" data-target=".navbar" data-offset="40" id="home">
    <form id="form1" runat="server">
        <nav id="scrollspy" class="navbar page-navbar navbar-dark navbar-expand-md fixed-top" data-spy="affix" data-offset-top="20">
        <div class="container">
            <a class="navbar-brand" href="#"><strong class="text-primary">KARTAL</strong><span class="text-light"></span></a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>         
        </div>
    </nav>
    <header class="header d-flex justify-content-center">
        <div class="container">
            <div class="row h-100 align-items-center">
                <div class="col-md-7">
                    <div class="header-content">
                        <h3 class="header-title"><strong class="text-primary">KARTAL app</strong></h3>
                        <h4 class="header-subtitle">Randevu almak istediğiniz yer için bilgileri giriniz</h4>
                    </div>  
                </div>
                <div class="col-md-5 d-none d-md-block">
                    <form class="header-form">
                        <div class="head">RANDEVU <span class="text-primary"></span> </div>
                        <div class="body">
                            <div class="form-group">

            <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="hospital_name" DataValueField="hospital_name"></asp:DropDownList>
            <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:noyan_webConnectionString %>' SelectCommand="SELECT [hospital_name] FROM [hospital_name]"></asp:SqlDataSource>
                                <br />
                                </div>
                                <div class="form-group">
                                            <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="SqlDataSource2" DataTextField="Bölümler" DataValueField="Bölümler"></asp:DropDownList>
                                <asp:SqlDataSource runat="server" ID="SqlDataSource2" ConnectionString='<%$ ConnectionStrings:noyan_webConnectionString %>' SelectCommand="SELECT [Bölümler] FROM [sections_hospital]"></asp:SqlDataSource>
                            </div>

                                <div class="form-group">
                                <asp:DropDownList ID="DropDownList3" runat="server" DataSourceID="SqlDataSource3" DataTextField="Doktor_adi" DataValueField="Doktor_adi"></asp:DropDownList>
                                <asp:SqlDataSource runat="server" ID="SqlDataSource3" ConnectionString='<%$ ConnectionStrings:noyan_webConnectionString %>' SelectCommand="SELECT [Doktor_adi] FROM [Bodrum_göz]"></asp:SqlDataSource>
                            </div>
                        </div>
                        <div class="footer">
                            <asp:Button ID="Button1" runat="server" class="btn btn-primary btn-block" Text="Randevu al" />
                        </div>
                    </form> 
                </div>
            </div>  
        </div>
    </header>
    <footer class="footer py-4 bg-dark text-light"> 
        <div class="container text-center">
            <p class="mb-4 small">Copyright <script>document.write(new Date().getFullYear())</script> &copy; <a href="http://www.devcrud.com">DevCRUD</a></p>
            <div class="social-links">
                <a href="javascript:void(0)" class="link"><i class="ti-facebook"></i></a>
                <a href="javascript:void(0)" class="link"><i class="ti-twitter-alt"></i></a>
                <a href="javascript:void(0)" class="link"><i class="ti-google"></i></a>
                <a href="javascript:void(0)" class="link"><i class="ti-pinterest-alt"></i></a>
                <a href="javascript:void(0)" class="link"><i class="ti-instagram"></i></a>
                <a href="javascript:void(0)" class="link"><i class="ti-rss"></i></a>
            </div>
        </div>
    </footer>
	
	<!-- core  -->
    <script src="assets/vendors/jquery/jquery-3.4.1.js"></script>
    <script src="assets/vendors/bootstrap/bootstrap.bundle.js"></script>
    <!-- bootstrap 3 affix -->
	<script src="assets/vendors/bootstrap/bootstrap.affix.js"></script>

    <!-- Rubic js -->
    <script src="assets/js/rubic.js"></script>
    </form>
</body>
</html>

