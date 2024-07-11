

<%@page import="network.DbConnection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
String id=request.getParameter("id");
System.out.println("iddd="+id);
Connection con = null;
try {
 Statement st= null;
 ResultSet rs = null;
 con = DbConnection.getConnection();
 st = con.createStatement();
int i = st.executeUpdate("delete from filereqtoowner where id='"+id+"'");
 if (i != 0) {                                                                      
 System.out.println("File Request deleted successfully");
 response.sendRedirect("ovfilereq.jsp?msg=Success");
                                        }
                                    } catch (Exception ex) {
                                        ex.printStackTrace();
                                    }

                                
%>