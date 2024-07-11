
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
<!-- ####################################################################################################### -->
<div class="wrapper col4">
  <div id="featured_intro">
    <div class="fl_left">
        <img style="width: 500px;height: 500px" src="images/carousel/system.PNG" alt="" />
    </div>
    <div class="fl_right">
        <h2><a>Abstract</a></h2>
      <p>With the popularity of cloud computing, mobile devices can store/retrieve personal data from anywhere at any time.
Consequently, the data security problem in mobile cloud becomes more and more severe and prevents further development of
mobile cloud. There are substantial studies that have been conducted to improve the cloud security. However, most of them are
not applicable for mobile cloud since mobile devices only have limited computing resources and power. Solutions with low
computational overhead are in great need for mobile cloud applications. In this paper, we propose a lightweight data sharing
scheme (LDSS) for mobile cloud computing. It adopts CP-ABE, an access control technology used in normal cloud environment,
but changes the structure of access control tree to make it suitable for mobile cloud environments. LDSS moves a large portion
of the computational intensive access control tree transformation in CP-ABE from mobile devices to external proxy servers.
Furthermore, to reduce the user revocation cost, it introduces attribute description fields to implement lazy-revocation, which is
a thorny issue in program based CP-ABE systems. The experimental results show that LDSS can effectively reduce the
overhead on the mobile device side when users are sharing data in mobile cloud environments..</p>     
    </div>
    <br class="clear" />
  </div>
</div>
<!-- ####################################################################################################### -->

</body>
</html>