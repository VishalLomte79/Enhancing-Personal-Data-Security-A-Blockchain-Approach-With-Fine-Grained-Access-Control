
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@page import="java.sql.ResultSet"%>
<%@page import="network.DbConnection"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%
String name = request.getParameter("name");
String pass = request.getParameter("pass");
System.out.println("owner===="+name+pass);
Connection con = DbConnection.getConnection();
    Statement st = con.createStatement();
    ResultSet rs=null;
    System.out.println("Enter user Name and Password:"+name+pass);
    try{
        rs=st.executeQuery("select * from ureg where name='"+name+"' and pass='"+pass+"'");
        if(rs.next()){
            
            session.setAttribute("uname", rs.getString("name"));
            session.setAttribute("umail", rs.getString("mail"));
            session.setAttribute("uid", rs.getString("id"));
            session.setAttribute("uakey", rs.getString("akey"));
             session.setAttribute("uaccessattribute", rs.getString("accessattribute"));
             session.setAttribute("uaccessattribute1", rs.getString("accessattribute1"));
            response.sendRedirect("ulog2.jsp");
        }else{
            response.sendRedirect("ulog.jsp"); 
        }
    }catch(Exception ex){
        ex.printStackTrace();
    }
             
             %>

