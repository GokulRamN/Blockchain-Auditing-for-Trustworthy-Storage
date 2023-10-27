
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="RDIC.SQLconnection"%>
<%
    String votp = request.getParameter("votp");
    String mail = (String) session.getAttribute("mail");
    String status = null;
    System.out.println("Check otp : " + votp);
    Connection con = SQLconnection.getconnection();
    Statement st = con.createStatement();
    try {
        ResultSet rs = st.executeQuery("SELECT * FROM dataowner where otp='" + votp + "' AND email='" + mail + "'");
        if (rs.next()) {

            response.sendRedirect("DO_home.jsp?Msg=login Sucessfull");
        } else {
            response.sendRedirect("otp.jsp?Msg=Wrong_OTP_entered");
        }

    } catch (Exception ex) {
        ex.printStackTrace();
    }
%>