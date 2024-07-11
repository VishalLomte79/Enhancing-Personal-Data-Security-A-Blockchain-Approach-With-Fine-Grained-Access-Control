
<%@page import="java.sql.ResultSet"%>
<%@page import="network.Mail"%>
<%@page import="network.CiperText"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="network.DbConnection"%>
<%
    Connection con = null;
    Statement st = null;
    ResultSet rs = null;
    Connection conn = DbConnection.getConnection();
    Statement sto = conn.createStatement();
      st = conn.createStatement();
    String id = request.getParameter("id");
    System.out .println("iddddd=="+id);
    try {
        rs = st.executeQuery("select * from ureg where id='"+id+"'");
        while (rs.next()) {
            String uid = rs.getString("id");
                
                 String mail = rs.getString("mail");
        String name = rs.getString("name");
        String accatt = rs.getString("accessattribute");
        System.out.println("sessionsssss======"+uid+mail+name);
       String str = uid+name+mail+accatt;
            String skey = null;
        CiperText enc = new CiperText();
        String encc = enc.encrypt(str);
        System.out.println("akey===" + encc);
        int i = sto.executeUpdate("update ureg set status='Granted',akey='"+encc+"' where id='"+id+"'");
        if (i != 0) {
            String msg = "Attribute Key: " + encc;
            Mail ma = new Mail();
            ma.secretMail(msg, name, mail);
            
            System.out.println("success");
            response.sendRedirect("viewakreq.jsp");
        } else {
            System.out.println("failed");
        }
        }
    } catch (Exception ex) {
        ex.printStackTrace();
    }
%>