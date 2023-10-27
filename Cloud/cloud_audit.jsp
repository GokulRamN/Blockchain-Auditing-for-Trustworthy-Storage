

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Statement"%>
<%@page import="RDIC.SQLconnection"%>
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
        <link href="css/style5.css" rel='stylesheet' type='text/css' />
        <script src="https://s.codepen.io/assets/libs/modernizr.js" type="text/javascript"></script>


        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css">
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
                            <a href="cloud_home.jsp">HOME PAGE<i class="fa fa-folder-open-o"></i>
                                <span></span>

                            </a>
                        </li>
                        <li class="dropdown">
                            <a href="cloud_audit.jsp">Audit Request<i class="fa fa-folder-open-o"></i>
                                <span></span>

                            </a>
                        </li>

                        <li class="dropdown">
                            <a href="all_files.jsp">Files In Cloud<i class="fa fa-image"></i>
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
        <div class="general-subhead">
            <h1 style=" color: white"> TPA Audit Request</h1>
        </div>
        <div class="overlay" style="background-color: #187fbd">


                <div class="container">
                    <center> <table class="rwd-table">
                            <tr>
                                <th>Data Owner ID</th>
                                <th>FILE ID</th>
                                <th>TIME</th>
                                <th>ACTION</th>
                            </tr>
                            <%
                                Connection con = SQLconnection.getconnection();
                                Statement st = con.createStatement();
                                try {
                                    ResultSet rs = st.executeQuery("Select * from cloud_request where status='waiting'");
                                    while (rs.next()) {
                            %>
                            <tr>
                                <td data-th="Movie Title"><%=rs.getString("doid")%></td>
                                <td data-th="Genre"><%=rs.getString("filekey")%></td>                     
                                <td data-th="Genre"><%=rs.getString("time")%></td>                     
                                <td><a href="audit_proof.jsp?fid=<%=rs.getString("filekey")%>&tim=<%=rs.getString("time")%>&did=<%=rs.getString("doid")%>" style="color:seagreen ">Send Auditing Proof</a></td>
                            </tr>
                            <%                                        }
                                } catch (Exception ex) {
                                    ex.printStackTrace();
                                }

                            %>
                        </table></center>
                        <br>
                        <br>
                        <br>
                        <br>
                        <br>
                        <br>
                        <br>
                        <br>
                        <br>
                        <br>
                        <br>
                        <br>
                        <br>
                        <br>

                </div>

            </div>
        <!--./ Main Slider End -->
        <!--./ Gereral Subhead End -->
        <!--./ footer-end End -->
        <!--  Jquery Core Script -->
        <script src="assets/js/jquery-1.10.2.js"></script>
        <!--  Core Bootstrap Script -->
        <script src="assets/js/bootstrap.js"></script>
        <!--  Custom Scripts -->
        <script src="assets/js/custom.js"></script>
        <script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
        <script src="js/index5.js"></script>

    </body>
</html>