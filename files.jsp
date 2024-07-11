
<%@page import="network.DbConnection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <title>BSSPD</title>
        <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
        <link rel="stylesheet" href="layout/styles/layout.css" type="text/css" />
        <script type="text/javascript" src="layout/scripts/jquery.min.js"></script>
        <!-- Waterwheel Carousel -->
        <script type="text/javascript" src="layout/scripts/carousel/jquery.waterwheelCarousel.min.js"></script>
        <script type="text/javascript" src="layout/scripts/carousel/jquery.waterwheelCarousel.setup.js"></script>
        <!-- / Waterwheel Carousel -->
    </head>
    <%
           if (request.getParameter("msg") != null) {
       %>
       <script>alert('Sorry..File Id is Not Matched');</script>
       <%            }
       %>
       <%
           if (request.getParameter("msgo") != null) {
       %>
       <script>alert('Your Request sent to Data Owner');</script>
       <%            }
       %>
       <%
           if (request.getParameter("msgc") != null) {
       %>
       <script>alert('Your Request sent to Cloud');</script>
       <%            }
       %>
        <%
           if (request.getParameter("ms") != null) {
       %>
       <script>alert('Secret Key or File Not Matched');</script>
       <%            }
       %>
       <%
           if (request.getParameter("revo") != null) {
       %>
       <script>alert('You are revoked by this Data Owner..');</script>
       <%            }
       %>
       <%
           if (request.getParameter("revoke") != null) {
       %>
       <script>alert('You are revoked so you Cant download this file..');</script>
       <%            }
       %>
    <body id="top">
        <div class="wrapper col1">
            <div id="header">
                <div class="fl_left">
                    <center><h1><a href="#">A Block Chain Based Security Sharing Scheme for personal data with fine grained access control</a></h1></center>

                </div>

                <br class="clear" />
            </div>
        </div>
        <!-- ####################################################################################################### -->
        <div class="wrapper col2">
            <div id="topbar">
                <div id="topnav">
                    <ul>
                      
        <li class="active"><a href="index.jsp">Home</a></li>
        <li><a href="#">DATA OWNER</a>
          <ul>
            <li><a href="olog.jsp">LOGIN</a></li>
            <li><a href="oreg.jsp">REGISTRATION</a></li>           
          </ul>
        </li>
        <li><a href="#">DATA USER</a>
          <ul>
            <li><a href="ulog.jsp">LOGIN</a></li>
            <li><a href="ureg.jsp">REGISTRATION</a></li>           
          </ul>
        </li>
       <li class="last"><a href="talog.jsp">TRUSTED AUTHORITY</a></li>
        <li class="last"><a href="cloudlog.jsp">CLOUD</a></li>   
      </ul>                                          
                </div>
                
                <br class="clear" />
            </div>
        </div>
        <!-- ####################################################################################################### -->
        <div class="wrapper col3">
            <div id="waterwheelCarousel">
                <img style="width: 400px;height: 300px" src="images/carousel/01.jpg" alt="" />
    <img style="width: 400px;height: 300px" src="images/carousel/02.jpg" alt="" />
    <img style="width: 400px;height: 300px" src="images/carousel/03.jpg" alt="" />
    <img style="width: 400px;height: 300px" src="images/carousel/04.png" alt="" />
    <img style="width: 400px;height: 300px" src="images/carousel/05.jpeg" alt="" />
    <img style="width: 400px;height: 300px" src="images/carousel/06.jpg" alt="" />
    <img style="width: 400px;height: 300px" src="images/carousel/07.png" alt="" />
    <img style="width: 400px;height: 300px" src="images/carousel/08.jpg" alt="" />
    <img style="width: 400px;height: 300px" src="images/carousel/09.jpg" alt="" />
    <img style="width: 400px;height: 300px" src="images/carousel/10.jpg" alt="" />
    <img style="width: 400px;height: 300px" src="images/carousel/11.jpg" alt="" />
            </div>
        </div>
        <center><h2 style="color: #e60498">DATA ACCESS REQUEST</h2></center><br><br><br>
                    <div style="float: right;margin-right: 100px" id="column">
                        <div class="subnav">
                            <h2 style="color: whitesmoke;font-style: italic"> Menu Bar </h2>
                            <ul>
                           
                                <li><a href="uhome.jsp">Home</a></li>
                                <li><a href="akreq.jsp">Attribute Key Request</a></li>
                                <li><a href="fileaccess.jsp">Access File</a></li>  
                                <li><a href="downfilehistory.jsp">Downloaded File History</a></li>
                                <li><a href="ulog.jsp">Logout</a></li>
                            
                        </ul>
                        </div></div>
                    <div style="margin-right: 30px" id="content" >
                        <table style="width: 850px" summary="Summary Here" cellpadding="0" cellspacing="0">
                            <thead>
                                <tr>
                                    <th>File Id</th>
                                    <th>File Name</th>
                                    <th>Owner Id</th>   
                                    <th>Owner Name</th> 
                                    <th>Description</th>
                                    <th>Access Policy</th>
                                    <th>time</th>                                   
                                    <th>Give Request</th>
                                    <th>Download</th>
                                </tr>
                            </thead>
                            <%
                                String id = (String) session.getAttribute("uid");
                                System.out.println("uiddd for key====" + id);
                                Connection con = null;
                                Statement st = null;
                                ResultSet rs = null;
                                try {
                                    con = DbConnection.getConnection();
                                    st = con.createStatement();
                                    rs = st.executeQuery("select * from fileupload");
                                    while (rs.next()) {%>

                            <tr class="light">
                                <td><%=rs.getString("id")%></td>
                                <td><%=rs.getString("filename")%></td>
                                <td><%=rs.getString("oid")%></td>
                                <td><%=rs.getString("owner")%></td>
                                <td><%=rs.getString("des")%></td>
                                <td><%=rs.getString("accesspolicy")%></td>
                                <td><%=rs.getString("time")%></td>
                                <td><a href="files1.jsp?id=<%=rs.getString("id")%>&owner=<%=rs.getString("owner")%>"><font style="color: #e60498">Request</font></a></td>
                                 <td><a href="down.jsp?id=<%=rs.getString("id")%>&owner=<%=rs.getString("owner")%>"><font style="color: #e60498">Download</font></a></td>
                            </tr>
                            <%}
                                } catch (Exception ex) {
                                    ex.printStackTrace();
                                }

                            %>

                        </table>                      
                    </div>
                    </body></html>
