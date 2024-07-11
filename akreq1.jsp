

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@page import="java.sql.Connection"%>
<%@page import="network.DbConnection"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%
          String id = request.getParameter("id");
          System.out.println("uuuuid==="+id);
                                    Connection con = null;
                                    Statement st = null;
                                    ResultSet rs = null;
                                    
                                    try {
                                        con = DbConnection.getConnection();
                                        st = con.createStatement();
                                  int query=st.executeUpdate("Update ureg set status ='waiting' where id='"+id+"'");
                                        if(query!=0)
                                        response.sendRedirect("akreq.jsp?msg==success");
                                                                 
                                                                   
                                                                  
                                                                                                                                                                                                                        
                                    } catch (Exception ex) {
                                        ex.printStackTrace();
                                    }

                                %>
