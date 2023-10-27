
import com.oreilly.servlet.MultipartRequest;
import com.sun.org.apache.xerces.internal.impl.dv.util.Base64;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.io.PrintWriter;
import java.security.SecureRandom;
import java.sql.Connection;
import java.sql.Statement;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Random;
import javax.crypto.KeyGenerator;
import javax.crypto.SecretKey;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author java3
 */
public class Upload extends HttpServlet {

    /**
     * Processes requests for both HTTP
     * <code>GET</code> and
     * <code>POST</code> methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    File file;
    final String filepath = "D:/";

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        try {
            MultipartRequest m = new MultipartRequest(request, filepath);
            String fname = m.getParameter("fname");
            String Des = m.getParameter("des");
            File file = m.getFile("data");
            String filename = file.getName().toLowerCase();

            Connection con = SQLconnection.getconnection();

            BufferedReader br = new BufferedReader(new FileReader(filepath + filename));
            StringBuffer sb = new StringBuffer();
            String temp = null;

            while ((temp = br.readLine()) != null) {
                sb.append(temp);
            }

            KeyGenerator Attrib_key = KeyGenerator.getInstance("AES");
            Attrib_key.init(128);
            SecretKey secretKey = Attrib_key.generateKey();
            System.out.println("++++++++ key:"   + secretKey);

            Encryption e = new Encryption();
            String encryptedtext = e.encrypt(sb.toString(), secretKey);
            //storing encrypted file
            FileWriter fw = new FileWriter(file);
            fw.write(encryptedtext);
            int hash1 =encryptedtext.hashCode();
            fw.close();
            byte[] b = secretKey.getEncoded();
            String Dkey = Base64.encode(b);
            System.out.println("converted secretkey to string:" + Dkey);

            HttpSession user = request.getSession(true);
            String doname = user.getAttribute("doname").toString();
            String doid = user.getAttribute("doid").toString();

            DateFormat dateFormat = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");
            Date date = new Date();
            String time = dateFormat.format(date);
            System.out.println("current Date " + time);

            boolean status = new FTPcon().upload(file);
            if (status) {

                Statement st = con.createStatement();
                Random RANDOM = new SecureRandom();
            int PASSWORD_LENGTH = 7;
            String letters = "0123456789";
            String uid = "";
            for (int i = 0; i < PASSWORD_LENGTH; i++) {
                int index = (int) (RANDOM.nextDouble() * letters.length());
                uid += letters.substring(index, index + 1);
            }
            String filekey = "file" + uid;
                int i = st.executeUpdate("insert into fileupload(filename,content,downer,time,dkey,conn,hashcode,doid, fname, des, filekey,audit_status)values('" + file.getName() + "','" + encryptedtext + "','" + doname + "','" + time + "','" + Dkey + "','"+sb.toString()+"', '"+hash1+"', '"+ doid +"','"+ fname +"','"+ Des +"','"+ filekey +"','Not Audited Yet')");
                if (i != 0) {
                    response.sendRedirect("upload.jsp?msg=File uploded Successfully");

                } else {
                    System.out.println("Error in SQL Syntex");
                }
            } 
        } catch (Exception e) {
            out.println(e);
        } finally {
            out.close();
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP
     * <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP
     * <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>
}
