
<%@page import="network.Mail"%>
<%@page import="network.DbConnection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    String fkid = request.getParameter("id");
//    String fid = (String) session.getAttribute("fidd");
    String fid = request.getParameter("fid");
    String umail = (String) session.getAttribute("umail");
    System.out.println("table idd==" + fkid+"\nfidd======"+fid+"\numail======="+umail);   
    Connection con = null;
    Statement st = null;
    Statement st1 = null;
    ResultSet rs = null;
    Connection conn = DbConnection.getConnection();
    Statement sto = conn.createStatement();
    st = conn.createStatement();
     st1 = conn.createStatement();
    try {
        rs = st.executeQuery("select * from fileupload where id='"+fid+"'");
//        rs = st1.executeQuery("select * from fileupload where id='"+fid+"'");
        while (rs.next()) {
            String dkey = rs.getString("secret_key");
                
                 
       
        System.out.println("dkeyyyy======"+dkey);      
        int i = sto.executeUpdate("update filereqtoowner set status='sended' where id='"+fkid+"'");
        if (i != 0) {
            String msg = "File Download Key " + dkey;
            Mail ma = new Mail();
            ma.secretMail(msg, "DecryptKey", umail);
            
            System.out.println("success");
            response.sendRedirect("ovfilereq.jsp");
        } else {
            System.out.println("failed");
        }
        }
    } catch (Exception ex) {
        ex.printStackTrace();
    }
%>
