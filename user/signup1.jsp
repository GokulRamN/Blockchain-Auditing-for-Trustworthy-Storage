

<%@page import="java.security.SecureRandom"%>
<%@page import="java.util.Random"%>
<%@page import="javax.el.ELException"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.text.DateFormat"%>
<%@page import="java.util.Date"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="RDIC.SQLconnection"%>
<%
    String name = request.getParameter("name");
    String mail = request.getParameter("email");
    String dob = request.getParameter("dob");
    String gender = request.getParameter("gender");
    String phone = request.getParameter("phone");
    String city = request.getParameter("city");
    String country = request.getParameter("country");
    String uname = request.getParameter("username");
    String pass = request.getParameter("password");
    String rpass = request.getParameter("rpassword");

    System.out.println("print value :");
    Connection conn = SQLconnection.getconnection();
    Statement sto = conn.createStatement();
    Statement st = conn.createStatement();
     DateFormat dateFormat = new SimpleDateFormat("YYYY/MM/dd HH:mm:ss");
            Date date = new Date();
            String time = dateFormat.format(date);
            System.out.println("Date and Time : " + time);
            System.out.println("Date and Time : " + name);
            System.out.println("Date and Time : " + dob); 
            System.out.println("Date and Time : " + pass);
            System.out.println("Date and Time : " + city);
    try {
        int i = sto.executeUpdate("insert into dataowner(name, email, dob, gender, phone, city, country, username, password, rpassword, time , kgc, otp)values('" + name + "','" + mail + "','" + dob + "','" + gender + "','" + phone + "','" + city + "','" + country + "','" + uname + "','" + pass + "','" + rpass + "','" + time + "','waiting','waiting')");
        if (i != 0) {
            System.out.println("success");
            response.sendRedirect("login.jsp?msg=Registered Successfully");
        } else {
            System.out.println("login.jsp?msg=Registered failed");
        }
         }
    catch (Exception ex) {
        ex.printStackTrace();
    }
%>