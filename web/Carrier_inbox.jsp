<%-- 
    Document   : Order_types
    Created on : 24 Mar, 2017, 1:25:35 AM
    Author     : nightmare
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="">
<head>
<title>Carrier Inbox</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
<link href="layout/styles/layout.css" rel="stylesheet" type="text/css" media="all">
<%!String uname=null;%>
<%// uname=session.getAttribute("uname"); %>
<%
        String name= (String)session.getAttribute("username");
        //session.setAttribute("uname", uname);
%>
</head>
<body id="top">


 
  <!-- ################################################################################################ -->
  <div class="wrapper row1" >
    <header id="header" class="hoc clear"> 
      <!-- ################################################################################################ -->
      <div id="logo" class="fl_left">
        <h1><a href="#">Carrier & Shipment Portal</a></h1>
      </div>
      <nav id="mainav" class="fl_right">
        <ul class="clear">
          
          <li><a class="drop" href="#" >Welcome <%out.println(name);%></a>
            <ul>
              <li><a href="Carr.jsp">Update Profile</a></li>
              <li><a href="Main2.jsp">Logout</a></li>
            </ul>
          </li>
          
        </ul>
      </nav>
      <!-- ################################################################################################ -->
    </header>
  </div>
    
        <div class="wrapper row3" style="background-color: white">
  <main class="hoc container clear"> 
    <!-- main body -->
    <!-- ################################################################################################ -->
    <div class="sectiontitle">
      <h3 class="heading"> CARRIER INBOX: Choose What to do!!!</h3>
    </div>
    <div class="group excerpts">
      
      <form action="View_New_deliveries.jsp" method="post">
      <article class="one_third first">
        <div class="hgroup">
          <h5 class="heading">VIEW NEW DELIVERIES</h5>
          <em></em></div>
          <figure><img src="images/place_order.png" style="width: 360px; height: 250px" alt=""></figure>
          <input type="hidden" name="name" value="<%=name%>">
          <center><input type="submit" value="New Deliveries"></center>
          <div class="txtwrap">
          <p></p>
        </div>
      </article>
      </form>
      
      <form action="View_New_deliveries.jsp" method="post">
      <article class="one_third">
        <div class="hgroup">
          <h5 class="heading">VIEW YOUR PREVIOUS SHIPMENTS</h5>
          <em></em></div>
        <figure><img src="images/vieworder.png" style="width: 360px; height: 250px" alt=""></figure>
        <input type="hidden" name="name" value="<%=name%>">
          <center><input type="submit" value=" View Your History "></center>
          
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
          
        </ul>
      </nav>
    </div>
    
    <div class="one_third">
      
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
    