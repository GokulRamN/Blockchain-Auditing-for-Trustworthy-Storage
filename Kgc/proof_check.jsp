

<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>
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
     <!--  Custom Style -->
    <link href="assets/css/style.css" rel="stylesheet" />
    <link rel="icon" href="assets/img/favicon.ico" type="image/x-icon"/>
    <link rel="shortcuticon" href="assets/img/favicon.ico" type="image/x-icon"/>
    <meta name="msapplication-TileImage" content="assets//favicon.ico">
<meta name="theme-color" content="#ffffff">

</head>
<style>
table {
    border-collapse: collapse;
    width: 100%;
}

th, td {
    text-align: left;
    padding: 8px;
}

tr:nth-child(even){background-color: #f2f2f2}

th {
    background-color: #4CAF50;
    color: white;
}
</style>
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
                        <a href="TPA_home.jsp">HOME PAGE<i class="fa fa-folder-open-o"></i>
                            <span></span>

                        </a>
                    </li>
                    <li class="dropdown">
                        <a href="TPA_audit_request.jsp">Audit Request<i class="fa fa-folder-open-o"></i>
                            <span></span>

                        </a>
                    </li>
                    <li class="dropdown">
                        <a href="cloud_req.jsp">Request Cloud<i class="fa fa-folder-open-o"></i>
                            <span></span>

                        </a>
                    </li>

                    <li class="dropdown">
                        <a href="proof_check.jsp">Proof Ckeck<i class="fa fa-image"></i>
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
       <h1>Blockchain Proof </h1>
     <!--./ Gereral Subhead End -->
    
    <section style="background-color: #00aced">
        <div class="container" style="background-color: #00aced">
            <div class="table-users">
                        <div class="header"></div>

                        <table cellspacing="0">
                            <tr>
                                <th>Owner_ID</th>
                                <th>File Id</th>
                                <th>Hash_Code</th>
                                <th style="color: red">Action</th>

                            </tr>

                            <%
                                Connection con = SQLconnection.getconnection();
                                Statement st = con.createStatement();
                                try {
                                    ResultSet rs = st.executeQuery("Select * from audit_proof");
                                    while (rs.next()) {
                            %>
                            <tr>
                                <td ><%=rs.getString("doid")%></td>
                                <td ><%=rs.getString("filekey")%></td>
                                <td><%=rs.getString("hashproof")%></td>
                                <td><a href="proof_verify.jsp?fid=<%=rs.getString("filekey")%>&hash=<%=rs.getString("hashproof")%>" style="color:blueviolet ">Verify</a></t

                            </tr>
                            <%                                        }
                                } catch (Exception ex) {
                                    ex.printStackTrace();
                                }

                            %>
                        </table>
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
        </section>
    <!--./ footer-end End -->
    <!--  Jquery Core Script -->
    <script src="assets/js/jquery-1.10.2.js"></script>
    <!--  Core Bootstrap Script -->
    <script src="assets/js/bootstrap.js"></script>
        <!--  Custom Scripts -->
    <script src="assets/js/custom.js"></script>
   
</body>
</html>