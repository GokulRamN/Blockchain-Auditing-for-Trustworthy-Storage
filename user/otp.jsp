
<%@page contentType="text/html" pageEncoding="UTF-8"%>
﻿<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />
    <meta name="description" content="" />
    <meta name="author" content="" />
     <!--[if IE]>
        <![endif]-->
    <title>RDIC</title>
    <!--  Bootstrap Style -->
    <link href="assets/css/bootstrap.css" rel="stylesheet" />
     <!--  Font-Awesome Style -->
    <link href="assets/css/font-awesome.min.css" rel="stylesheet" />
     <!--  Font-Awesome Animation Style -->
    <link href="assets/css/font-awesome-animation.css" rel="stylesheet" />
     <!--  Pretty Photo Style -->
    <link href="assets/css/prettyPhoto.css" rel="stylesheet" />
        <!--  Google Font Style -->
    <link href="assets/css/font.css" rel='stylesheet' type='text/css' />
     <!--  Custom Style -->
    <link href="assets/css/style.css" rel="stylesheet" />
    <link rel="icon" href="assets/img/favicon.ico" type="image/x-icon"/>
    <link rel="shortcuticon" href="assets/img/favicon.ico" type="image/x-icon"/>
    <meta name="msapplication-TileImage" content="assets//favicon.ico">
<meta name="theme-color" content="#ffffff">

</head>
<body>
<div class="navbar navbar-default navbar-fixed-top menu-back">
        <div class="container">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>

                <a class="navbar-brand" href="#">
                    <img src="assets/img/logo.png" class="navbar-brand-logo " alt="" />
                </a>
            </div>
            <div class="navbar-collapse collapse" >
                <ul class="nav navbar-nav navbar-right">
                   
                    <li class="dropdown">
                        <a href="index.jsp">HOME PAGE<i class="fa fa-folder-open-o"></i>
                            <span></span>

                        </a>
                    </li>
                    <li class="dropdown">
                        <a href="login.jsp">Data Owner<i class="fa fa-folder-open-o"></i>
                            <span></span>

                        </a>
                    </li>

                    <li class="dropdown">
                        <a href="serverlogin.jsp">Cloud Server<i class="fa fa-image"></i>
                            <span></span>
                        </a>
                    </li>

                   
                    <li class="dropdown">
                        <a href="#">Third Party Auditor<i class=replace this text</span>
                        </a>
            </div>

        </div>
    </div>
    <!--./ Top Menu End -->
    <div class="div-social-top" style="font-size: 25px">

        <marquee >  <i class="fa fa-globe">&nbsp;&nbsp;Blockchain-Based Public Integrity Verification for Cloud Storage against Procrastinating Auditors</i></marquee>
    </div>
<style>
    .be-detail-header { border-bottom: 1px solid #edeff2; margin-bottom: 50px; }
</style>
<div class="container be-detail-container">
    <div class="row">
        <div class="col-sm-6 col-sm-offset-3">
            <br>
            <img src="assets/img/otp.png" class="img-responsive" style="width:200px; height:200px;margin:0 auto;"><br>
            
            <h1 class="text-center">Verify your Identity</h1><br>
            <p class="lead" style="align:center"></p><p> Thanks for giving your details. An OTP has been sent to your Mail Id. Please enter the 6 digit OTP below for Successful Login</p>  <p></p>
        <br>
       
            <form method="get" id="veryfyotp" action="otp1.jsp">
                <div class="row">                    
                <div class="form-group col-sm-8">
                	 <span style="color:red;"></span>                    <input type="password" class="form-control" name="votp" placeholder="Enter your OTP number" required="">
                </div>
                <button type="submit" class="btn btn-primary  pull-right col-sm-3">Verify</button>
                </div>
            </form>
        <br><br>
        </div>
    </div>        
</div>
    </body>
</html>