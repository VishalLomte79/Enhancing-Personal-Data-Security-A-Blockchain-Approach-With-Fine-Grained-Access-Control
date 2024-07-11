
<%@page import="network.DbConnection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
String uid=request.getParameter("id");
String oid =(String)session.getAttribute("oid");
String oname =(String)session.getAttribute("oname");
System.out.println("user id===="+uid+"\nowner id======"+oid+"\nowner name======"+oname);
 Connection con = null;
    Statement st = null;
    Statement st1 = null;
    ResultSet rs,rs1 = null;     
     try {
          con = DbConnection.getConnection();
        st = con.createStatement();
        rs = st.executeQuery("select * from ureg where id='"+uid+"'");
//        rs = st1.executeQuery("select * from fileupload where id='"+fid+"'");
        if (rs.next()) {
            String uname = rs.getString("name");
             String umail = rs.getString("mail");                           
        System.out.println("username======"+uname+"\nusermail"+umail);      
      int i= st.executeUpdate("insert into revocation(oid, oname, uid, uname, umail, status)values('" + oid + "','" + oname + "','" + uid + "','" + uname + "','" + umail + "','revoked')");
        if (i != 0) {                      
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
