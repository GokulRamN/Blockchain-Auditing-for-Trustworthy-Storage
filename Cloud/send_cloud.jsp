
<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.text.DateFormat"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="RDIC.SQLconnection"%>
<%@page import="java.sql.Connection"%>
<%
    String doid = request.getParameter("doid");
    String fid = request.getParameter("fid");
    System.out.println(" \n filekey :" + doid );
    Connection con = SQLconnection.getconnection();
    Statement st = con.createStatement();
    Statement st1 = con.createStatement();
    Statement sto = con.createStatement();
    try {
        int j = sto.executeUpdate("update audit_request set status='sent' where doid ='" + doid + "' AND filekey ='" + fid + "' ");
        System.out.println("Redirect Attributes==");
        ResultSet rs = st.executeQuery("Select * from fileupload where doid ='" + doid + "' ");
        if (rs.next()) {
           // String fid= rs.getString("filekey");
            DateFormat dateFormat = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");
            Date date = new Date();
            String time = dateFormat.format(date);
            System.out.println("Date and Time : " + time);
            int i = st1.executeUpdate("INSERT into cloud_request(filekey, time , doid, status) values('" + fid + "','" + time + "','" + doid + "','waiting')");
            if (i != 0) {
                response.sendRedirect("TPA_audit_request.jsp?requestsent");

            }

        } else {
            response.sendRedirect("TPA_audit_request.jsp?request failed");
        }
    } catch (Exception ex) {
        ex.printStackTrace();
    }




%>
