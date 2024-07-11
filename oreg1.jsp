
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="network.DbConnection"%>
<%
    String name = request.getParameter("name");
    String pass = request.getParameter("pass");
//    int pass = Integer.parseInt(request.getParameter("pass"));
    String mail = request.getParameter("email");
    
    String gen = request.getParameter("gen");
    String dob  = request.getParameter("dob");
    String  cell = request.getParameter("cell");
    String state  = request.getParameter("state");
    String country = request.getParameter("country");
    System.out.println("print value :"+name+mail+pass+gen+dob+cell+state+country);
    Connection conn = DbConnection.getConnection();
    Statement sto = conn.createStatement();
    try {

        int i = sto.executeUpdate("insert into oreg(name, pass, mail , gen, dob, contactnumber, state, country, status, pkey, skey)values('" + name + "','" + pass + "','" + mail + "','" + gen + "','" + dob + "','" + cell + "','" + state + "','"+country+"','Give Request','Waiting','Waiting')");
        if (i != 0) {                        
            System.out.println("success");
            response.sendRedirect("oreg.jsp");
        } else {
            System.out.println("failed");
        }

    } catch (Exception ex) {
        ex.printStackTrace();
    }
%>