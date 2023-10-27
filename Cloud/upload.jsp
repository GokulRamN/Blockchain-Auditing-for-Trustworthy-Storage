

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
     <link href="scss/style.css" rel="stylesheet" />
    <link rel="icon" href="assets/img/favicon.ico" type="image/x-icon"/>
    <link rel="shortcuticon" href="assets/img/favicon.ico" type="image/x-icon"/>
    <meta name="msapplication-TileImage" content="assets//favicon.ico">


</head>
<style>
    
</style>
<body>    <!--./ Top Menu End -->
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
                        <a href="DO_home.jsp">HOME PAGE<i class="fa fa-folder-open-o"></i>
                            <span></span>

                        </a>
                    </li>
                    <li class="dropdown">
                        <a href="upload.jsp">File Upload<i class="fa fa-folder-open-o"></i>
                            <span></span>

                        </a>
                    </li>

                    <li class="dropdown">
                        <a href="myfiles.jsp">My Files<i class="fa fa-image"></i>
                            <span></span>
                        </a>
                    </li>
                    <li class="dropdown">
                        <a href="audit_request.jsp">File Audit Request<i class="fa fa-image"></i>
                            <span></span>
                        </a>
                    </li>
                     <li class="dropdown">
                            <a href="proof.jsp">Proof Check<i class="fa fa-image"></i>
                                <span></span>
                            </a>
                        </li>
                     <li class="dropdown">
                        <a href="index.jsp">Logout<i class="fa fa-image"></i>
                            <span></span>
                        </a>
                    </li>
            </div>

        </div>
    </div>
    <!--./ Top Menu End -->
    <div class="div-social-top" style="font-size: 25px">
    </div>
    <div class="overlay">
            <div class="container">
     <form action="Upload" method="post" enctype="multipart/form-data" >
  
  <h1><strong>File upload</strong></h1>
  
  <div class="form-group">
    <label for="title">File Name <span></span></label>
    <input type="text" name="fname" id="title" required="required" class="form-controll"/>
  </div>
  <div class="form-group">
    <label for="caption">Description<span></span></label>
    <input type="text" name="des" id="caption" required="required" class="form-controll"/>
  </div>
  
  <div class="form-group file-area">
      <label for="images">File<span style="color: red"></span></label>
    <input type="file" name="data" id="images" required="required" multiple="multiple" />
    <div class="file-dummy">
      <div class="success">Great, your files are selected. Keep on.</div>
      <div class="default">Please select file OR Drag and Drop here </div>
    </div>
  </div>
  
  <div class="form-group">
    <button type="submit">Upload Files</button>
  </div>
  
</form>
            </div>
    </div>


<div id="footser-end">
        <div class="container">

            <div class="row">
                <div class="col-lg-12 col-md-12">
                    
                </div>
            </div>

        </div>
    </div>
    <!--./ footer-end End -->
    <!--  Jquery Core Script -->
    <script src="assets/js/jquery-1.10.2.js"></script>
    <!--  Core Bootstrap Script -->
    <script src="assets/js/bootstrap.js"></script>
        <!--  Custom Scripts -->
    <script src="assets/js/custom.js"></script>
   
</body>
</html>