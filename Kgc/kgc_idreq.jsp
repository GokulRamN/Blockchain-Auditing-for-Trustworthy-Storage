

<%@page import="java.sql.Connection"%>
<%@page import="RDIC.SQLconnection"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
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
                        <a href="kgc.jsp">HOME PAGE<i class="fa fa-folder-open-o"></i>
                            <span></span>

                        </a>
                    </li>
                    <li class="dropdown">
                        <a href="kgc_request.jsp">KGC Key Request<i class="fa fa-folder-open-o"></i>
                            <span></span>

                        </a>
                    </li>

                    <li class="dropdown">
                        <a href="kgc_idreq.jsp">Data Owner ID<i class="fa fa-image"></i>
                            <span></span>
                        </a>
                    </li>
                     <li class="dropdown">
                        <a href="index.jsp">Logout<i class="fa fa-image"></i>
                            <span></span>
                        </a>
                    </li>
                </ul>
            </div>

        </div>
    </div>
    <!--./ Top Menu End -->
    
    <div class="general-subhead">
       <h1>Key Request</h1>
   <section style="background-color: #00aced">
        <div class="container" style="background-color: #00aced">
            <table>
  <tr>
          <th>DO ID</th>
    <th>DO Name</th>
    <th>DO Mail</th>
    <th>D.O.B</th>
    <th>Gender</th>

    <th>Phone</th>
    <th>City</th>
    <th>Country</th>
  </tr>
   <%
                                Connection con = SQLconnection.getconnection();
                                Statement st = con.createStatement();
                                try {
                                    ResultSet rs = st.executeQuery("Select * from dataowner");
                                    while (rs.next()) {
                            %>
  <tr>
      <td><%=rs.getString("kgc")%></td>
     <td><%=rs.getString("name")%></td>
     <td><%=rs.getString("email")%></td>
     <td><%=rs.getString("dob")%></td>
     <td><%=rs.getString("gender")%></td>
     <td><%=rs.getString("phone")%></td>
     <td><%=rs.getString("city")%></td>
     <td><%=rs.getString("country")%></td>
  </tr>
   <%                                        }
                                } catch (Exception ex) {
                                    ex.printStackTrace();
                                }

                            %>
                        </table>
           </div>
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