
<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.text.DateFormat"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="RDIC.SQLconnection"%>
<%@page import="java.sql.Connection"%>
<%
    String fid = request.getParameter("fid");
    String uname = (String)session.getAttribute("uname");
    System.out.println(" \n filekey :" + fid );
    Connection con = SQLconnection.getconnection();
    Statement st = con.createStatement();
    Statement st1 = con.createStatement();
    try {
        ResultSet rs = st.executeQuery("Select * from fileupload where filekey ='" + fid + "' ");
        if (rs.next()) {
            String mail = (String)session.getAttribute("mail");
            String hash = rs.getString("hashcode");
            String doid = rs.getString("doid");
            
            DateFormat dateFormat = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");
            Date date = new Date();
            String time = dateFormat.format(date);
            System.out.println("Date and Time : " + time);
            int i = st1.executeUpdate("INSERT into audit_request(filekey, time , doid, status, hash, hash_proof) values('" + fid + "','" + time + "','" + doid + "','waiting','" + hash + "','waiting')");
            if (i != 0) {
                response.sendRedirect("audit_request.jsp?requestsent");

            }

        } else {
            response.sendRedirect("audit_request.jsp?request failed");
        }
    } catch (Exception ex) {
        ex.printStackTrace();
    }




%>