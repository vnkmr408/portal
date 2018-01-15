<%-- 
    Document   : Order_types
    Created on : 24 Mar, 2017, 1:25:35 AM
    Author     : nightmare
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="">
<head>
<title>Carrier Portal</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
<link href="layout/styles/layout.css" rel="stylesheet" type="text/css" media="all">

<%// uname=session.getAttribute("uname"); %>
<%
        //String uname= request.getParameter("uname");
        //session.setAttribute("uname",uname);
%>
</head>
<body id="top">

<!-- Top Background Image Wrapper -->
<!-- ################################################################################################ -->
  <header id="header" class="hoc clear"> 
      <!-- ################################################################################################ -->
      <div id="logo" class="fl_left">
        <h1><a href="#">Carrier & Shipment Portal</a></h1>
      </div>
      <nav id="mainav" class="fl_right">
        <ul class="clear">
            <%String name = request.getParameter("name");%>
            <li><a class="drop" href="#" >Welcome <%out.println(name);  %></a>
            <ul>
              <li><a href="Carr.jsp">Update Profile</a></li>
              <li><a href="Main2.jsp">Logout</a></li>
            </ul>
          </li>
          </li>
         
        </ul>
      </nav>
      <!-- ################################################################################################ -->
    </header>  
    
        <div class="wrapper row3">
  <main class="hoc container clear"> 
    <!-- main body -->
    <!-- ################################################################################################ -->
    <div class="sectiontitle">
      <h3 class="heading"><b><%//=session.getAttribute("name")%></b> Choose your category of shipment</h3>
    </div>
    <div class="group excerpts">
        <form action="Order_vehicle.jsp" method="post">
        <article class="one_third first">
        <div class="hgroup">
          <h5 class="heading">Shipping of Vehicles</h5>
          <em></em></div>
          <figure><img src="images/hatchback.gif" style="width: 360px; height: 250px" alt=""></figure>
        <input type="hidden" name="name" value="<%=name%>">
          <center><input type="submit" value=" Click here for Vehicle order "></center>
          <div class="txtwrap">
          <p></p>
        </div>
      </article>
        </form>
      
          <form action="Order_Households.jsp" method="post">
      <article class="one_third">
        <div class="hgroup">
          <h5 class="heading">Shipping of House Hold Items</h5>
          <em></em></div>
          <figure><img src="images/furniture.jpg" style="width: 360px; height: 250px" alt=""></figure>
          <input type="hidden" name="name" value="<%=name%>">
          <center><input type="submit" value=" Click here for House hold order "></center>
          <div class="txtwrap">
          <p></p>
        </div>
      </article>
          </form>
          
          <form action="" method="post">
      <article class="one_third">
        <div class="hgroup">
          <h5 class="heading">Office Moves</h5>
          <em></em></div>
        <figure><a href="#"><img src="images/goods.jpg" style="width: 360px; height: 250px" alt=""></a></figure>
        <input type="hidden" name="name" value="<%=name%>">
          <center><input type="submit" value=" Click here for other goods order "></center>
        <div class="txtwrap">
          <p></p>
        </div>
      </article>
          </form>
    </div>
    
    <!-- ################################################################################################ -->
    <!-- / main body -->
    <div class="clear"></div>
  </main>
</div>
        <div class="wrapper row4 bgded overlay" style="background-color: #191919">
  <footer id="footer" class="hoc clear"> 
    <!-- ################################################################################################ -->
    <div class="one_third first">
      
      <nav>
        <ul class="nospace">
          <li><a href="index.html"><i class="fa fa-lg fa-home"></i></a></li>
          <li><a href="#">About</a></li>
          <li><a href="#">Contact</a></li>
          <li><a href="#">Privacy</a></li>          
        </ul>
      </nav>
    </div>
    
    <!-- ################################################################################################ -->
  </footer>
</div>
<!-- ################################################################################################ -->
<!-- ################################################################################################ -->
<!-- ################################################################################################ -->
<div class="wrapper row5">
  <div id="copyright" class="hoc clear"> 
    <!-- ################################################################################################ -->
    <p class="fl_left"> Copyright © Carrier & Shipment Portal 2017 - All Rights Reserved.</p>
    <p> <a> Designed By SALIK, RAVI, SARFRAJ, VINAY</a></p>
  <!--  <p class="fl_right">Template by <a target="_blank" href="http://www.os-templates.com/" title="Free Website Templates">OS Templates</a></p>-->
    <!-- ################################################################################################ -->
  </div>
</div>
<!-- ################################################################################################ -->
<!-- ################################################################################################ -->
<!-- ################################################################################################ -->
<a id="backtotop" href="#top"><i class="fa fa-chevron-up"></i></a>
<!-- JAVASCRIPTS -->
<script src="layout/scripts/jquery.min.js"></script>
<script src="layout/scripts/jquery.backtotop.js"></script>
<script src="layout/scripts/jquery.mobilemenu.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>      
</body>
</html>
    