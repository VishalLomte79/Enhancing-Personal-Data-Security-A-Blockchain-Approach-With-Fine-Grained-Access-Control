
<%@page import="network.Mail"%>
<%@page import="java.security.SecureRandom"%>
<%@page import="java.util.Random"%>
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
    String accessattribute = request.getParameter("ap");
    String accessattribute1 = request.getParameter("ap1");
    System.out.println("print value :"+name+mail+pass+gen+dob+cell+state+country);
    Connection conn = DbConnection.getConnection();
    Statement sto = conn.createStatement();
    try {
Random RANDOM = new SecureRandom();
            int PASSWORD_LENGTH = 4;
            String letters = "0123456789";
            String uid = "";
            for (int i = 0; i < PASSWORD_LENGTH; i++) {
                int index = (int) (RANDOM.nextDouble() * letters.length());
                uid += letters.substring(index, index + 1);
            }
            String msgg = "UID" + uid;
        int i = sto.executeUpdate("insert into ureg(name, pass, mail , gen, dob, contactnumber, state, country, status, akey, accessattribute, accessattribute1, sk)values('" + name + "','" + pass + "','" + mail + "','" + gen + "','" + dob + "','" + cell + "','" + state + "','"+country+"','Give Request','waiting','"+accessattribute+"','"+accessattribute1+"','"+msgg+"')");
        if (i != 0) {  
Mail ma= new Mail();
            ma.secretMail(msgg,name,mail);          
            String msg= "Secret Key"+msgg;
            System.out.println("success");                                 
            System.out.println("success");
            response.sendRedirect("ureg.jsp");
        } else {
            System.out.println("failed");
        }

    } catch (Exception ex) {
        ex.printStackTrace();
    }
%>