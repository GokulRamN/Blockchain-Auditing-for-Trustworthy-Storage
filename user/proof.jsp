
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
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
        <!--  Custom Style -->
        <link href="assets/css/style.css" rel="stylesheet" />
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css">
        <link rel="stylesheet" href="css/style3.css">
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

            <marquee >  <i class="fa fa-globe">&nbsp;&nbsp;Blockchain-Based Public Integrity Verification for Cloud Storage against Procrastinating Auditors</i></marquee>
        </div>

        <div class="general-subhead">
            <h1>Check Auditor Report</h1>
        </div>
        <div>

            <div class="container">
                <div class="overlay">
                    <div class="table-users">
                        <div class="header">My Files</div>

                        <table cellspacing="0">
                            <tr>
                                <th>Owner_ID</th>
                                <th>File Id</th>
                                <th>Hash_Code</th>
                                <th style="color: red">Action</th>

                            </tr>

                            <%
                                String doid = (String)session.getAttribute("doid");
                                Connection con = SQLconnection.getconnection();
                                Statement st = con.createStatement();
                                try {
                                    ResultSet rs = st.executeQuery("Select * from audit_proof where doid ='" + doid + "' ");
                                    while (rs.next()) {
                            %>
                            <tr>
                                <td ><%=rs.getString("doid")%></td>
                                <td ><%=rs.getString("filekey")%></td>
                                <td><%=rs.getString("hashproof")%></td>
                                <td><a href="test.jsp?fid=<%=rs.getString("filekey")%>&hash=<%=rs.getString("hashproof")%>" style="color:blueviolet ">Verify</a></t

                            </tr>
                            <%                                        }
                                } catch (Exception ex) {
                                    ex.printStackTrace();
                                }

                            %>
                        </table>
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