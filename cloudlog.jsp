
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
<center><h2 style="color: #e60498">CLOUD LOGIN</h2></center>
<!-- ####################################################################################################### -->
<div class="wrapper col4">
  <div id="featured_intro">
    <div class="fl_left">
        <img style="width: 400px;height: 400px" src="images/carousel/ta.jpg" alt="" />
    </div>
    <div class="fl_right">
        
     <div id="respond">
        <form action="cloudlog1.jsp" method="post">
          <p>              
              <input style="width: 200px;height: 22px;" type="text" name="name" id="name" value="" /> &nbsp;&nbsp;
            <label style="font-size: 21px;color: whitesmoke;font-style: italic"for="name">Username</label>
          </p><br>
          <p>              
            <input style="width: 200px;height: 22px;" type="password" name="pass" id="password" value="" /> &nbsp;&nbsp;
            <label style="font-size: 21px;color: whitesmoke;font-style: italic" for="password">Password</label>
          </p>                    
          <p><br>
              <input style="color:#A5066D " name="submit" type="submit" id="submit" value="Submit Form" />
            &nbsp;
            <input style="color:#A5066D " name="reset" type="reset" id="reset" tabindex="5" value="Reset Form" />
          </p>
        </form>
      </div>   
    </div>
    <br class="clear" />
  </div>
</div>
<!-- ####################################################################################################### -->

</body>
</html>