
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Statement"%>
<%@page import="RDIC.SQLconnection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html >
<head>
  <meta charset="UTF-8">
  <title>Uploaded File Validation</title>
  
  
  
      <link rel="stylesheet" href="css/validation.css">

  
</head>

<body>
    <h1>Uploaded File Validation</h1> <form method="get" action="proof.jsp">
    <button style="float: right"> Back</button>
</form>
    
    
    
<%
                               String fid = request.getParameter("fid");
                               String hash1 = request.getParameter("hash");
                                Connection con = SQLconnection.getconnection();
                                Statement st = con.createStatement();
                                try {
                                    ResultSet rs = st.executeQuery("Select * from fileupload where filekey ='"+fid+"' ");
                                    while (rs.next()) {
                            %>
<div class="pwdForm">
  <form ... onsubmit="return checkForm(this);">
    <div>
        <input placeholder="File ID" type="text" name="username" value="<%=fid%>">
    </div>
    <div>
        <input placeholder="Hash value Uploaded" readonly="" type="text" name="pwd1" value="<%=hash1%>">
    </div>
    <div>
        <input placeholder="Hash Value Proof" readonly="" type="text" name="pwd2" value="<%=rs.getString("hashcode")%>">
    </div>
    <div>
      <button type="submit">VERIFY</button>
    </div>
  </form>
</div>
    <%                                        }
                                } catch (Exception ex) {
                                    ex.printStackTrace();
                                }

                            %>
  
    <script  src="js/validation.js"></script>

</body>
</html>
