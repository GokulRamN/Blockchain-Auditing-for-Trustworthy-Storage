
<%@page import="RDIC.Mail"%>
<%@page import="java.security.SecureRandom"%>
<%@page import="java.util.Random"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="RDIC.SQLconnection"%>
<%
    String mail = request.getParameter("mail");
    String pass = request.getParameter("password");
    String status = null;
    System.out.println("Check User name And Password : " + mail + pass);
    Connection con = SQLconnection.getconnection();
    Statement st = con.createStatement();
     Statement sto = con.createStatement();
    try {
        ResultSet rs = st.executeQuery("SELECT * FROM dataowner where email='" + mail + "' AND password='" + pass + "' AND kgc !='waiting'");
        if (rs.next()) {
            session.setAttribute("doname", rs.getString("name"));
            session.setAttribute("mail", rs.getString("email"));
            session.setAttribute("doid", rs.getString("kgc"));
            
            Random RANDOM = new SecureRandom();
        int PASSWORD_LENGTH = 5;
        String letters = "0123456789";
        String otp = "";
        for (int i = 0; i < PASSWORD_LENGTH; i++) {
            int index = (int) (RANDOM.nextDouble() * letters.length());
            otp += letters.substring(index, index + 1);
        }
        String filekey = "I" + otp;
         int i = sto.executeUpdate("update dataowner set otp ='"+filekey+"' where email='" +mail+"' " );
            String msggg = "Your 6 digit OTP : " +filekey ;
            Mail ma = new Mail();
            ma.secretMail(msggg, "Downloadkey", mail);
            String msg = "File Download Key:" + msggg;
            response.sendRedirect("DO_home.jsp?Msg=login%20Sucessfull");
            //response.sendRedirect("otp.jsp?Msg=otp");
        } else {
            //DO_home.jsp?Msg=login%20Sucessfull
            //response.sendRedirect("login.jsp?Msg=Authentication_Failed");
        }

    } catch (Exception ex) {
        ex.printStackTrace();
    }
%>