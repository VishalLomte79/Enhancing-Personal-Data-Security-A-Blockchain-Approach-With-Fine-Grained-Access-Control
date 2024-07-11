
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
                            
                <!--    <div id="search">
                      <form action="#" method="post">
                        <fieldset>
                          <legend>Site Search</legend>
                          <input type="text" value="Search Our Website&hellip;"  onfocus="this.value=(this.value=='Search Our Website&hellip;')? '' : this.value ;" />
                          <input type="submit" name="go" id="go" value="Search" />
                        </fieldset>
                      </form>
                    </div>-->
                <br class="clear" />
            </div>
        </div>
        <%
            String id = (String) session.getAttribute("oid");
            String pkey = (String) session.getAttribute("opkey");
        %>
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
        <center><h2 style="color: #e60498">Public Key Request</h2></center><br><br><br>
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
                    <p style="color: white">Encryption Service Provider (ESP): ESP provides data encryption<br> operations for DO.</p>
                    <div style="float: right;margin-right: 100px" class="fl_right">

                        <div id="respond">
                            <form action="UploadFiles" method="post" enctype="multipart/form-data">
                                <p>              
                                    <input style="width: 250px;height: 22px;" type="text" name="fname" id="name" required="" value=""  /> 
                                    <label style="font-size: 21px;color: white;font-style: italic"for="name">File Name</label>
                                </p><br>
                                <p>
                                    <textarea name="des" id="comment" cols="38%" rows="2" required=""></textarea>
                                    <label style="font-size: 21px;color: white;font-style: italic" for="comment" > Description</label>
                                </p><br>
                                <p>              
                                    <input style="width: 250px;height: 22px;" type="text" name="pkey" id="password" value="<%=pkey%>" /> 
                                    <label style="font-size: 21px;color: white;font-style: italic" for="password">Public Key</label>
                                </p><br>           
                                <p>
                                    <select style="width: 250px;height: 25px;" name="ap" id="email" required="" >
                                        <option value="-1">Choose </option>
                                        <option value="sports">Sports</option>
                                        <option value="politics">politics</option>
                                        <option value="photographers">Photographers</option>
                                        <option value="entrepreneur">Entrepreneur</option>
                                    </select>
                                    <label style="font-size: 21px;color: white;font-style: italic" for="gender">Choose Access Policy</label>
                                </p><br>
                                    <p>              
                                        <input style="width: 250px;height: 22px;color: white" type="file" name="file" id="password" required="" value="" /> 
                                    <label style="font-size: 21px;color: white;font-style: italic" for="password">File</label>
                                </p><br>
                                <p>
                                    <input style="color:#A5066D " name="submit" type="submit" id="submit" value="Encrypt & Upload" />
                                    &nbsp;
                                    <input style="color:#A5066D " name="reset" type="reset" id="reset" tabindex="5" value="Reset Form" />
                                </p>
                            </form></div><br><br><br><br><br>
                        </div>                       
                    </body></html>
