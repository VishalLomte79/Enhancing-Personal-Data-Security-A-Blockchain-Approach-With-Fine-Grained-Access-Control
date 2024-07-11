
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
        <center><h2 style="color: #e60498">UPLOADED FILES </h2></center><br><br><br>
                    <div style="float: right;margin-right: 100px" id="column">
                        <div class="subnav">
                           <h2 style="color: whitesmoke;font-style: italic"> Menu Bar </h2>
                             <ul>
                               <li><a href="ohome.jsp">Home</a></li>
                            <li><a href="pkreq.jsp">Public Key Request</a></li>
                            <li><a href="uploadfile.jsp">Upload File</a></li>
                            <li><a href="ovfilereq.jsp">View Data User File Access Request</a></li>
                            <li><a href="ovupfiles.jsp">View Uploaded Files</a></li>
                            <li><a href="olog.jsp">Logout</a></li>
                            </ul>
                        </div></div>
                    
                    <div style="float: left;">
                        <table summary="Summary Here" cellpadding="0" cellspacing="0">
                            <thead>
                                <tr>                                    
                                    <th>File Id</th>                                                       
                                    <th>File Name</th>
                                    <th>Description</th>
                                    <th>Access Privilege</th>
                                    <th>Time</th>                                                                        
                                </tr>
                            </thead>
                            <%
                                String id = (String) session.getAttribute("oid");
                                System.out.println("uiddd for key====" + id);
                                Connection con = null;
                                Statement st = null;
                                ResultSet rs = null;
                                try {
                                    con = DbConnection.getConnection();
                                    st = con.createStatement();
                                    rs = st.executeQuery("select * from fileupload where oid='"+id+"'");
                                    while (rs.next()) {%>

                            <tr class="light">
                                <td><%=rs.getString("id")%></td>
                                <td><%=rs.getString("filename")%></td>
                                <td><%=rs.getString("des")%></td>
                                <td><%=rs.getString("accesspolicy")%></td>
                                 <td><%=rs.getString("time")%></td>                                                                                                                                                               
                            </tr>
                            <%}
                                } catch (Exception ex) {
                                    ex.printStackTrace();
                                }

                            %>

                        </table>                      
                    </div>
                    </body></html>