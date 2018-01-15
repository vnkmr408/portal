<!DOCTYPE html>

<html>
<head>
    <%@page import="java.util.*"  %>
<title>Carrier Portal</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
<link href="layout/styles/layout.css" rel="stylesheet" type="text/css" media="all">
</head>
<body>
    <%
        //if((session.getAttribute("uname")==null) || (session.getAttribute("uname")==""))
        //out.println("user"+session.getAttribute("uname"));
    %>

<!-- Top Background Image Wrapper -->
<div class="bgded overlay" style="background-image:url('images/demo/backgrounds/01.png'); background-attachment:fixed ;"> 
  <!-- ################################################################################################ -->
  <div class="row1">
    <header id="header" class="hoc clear"> 
      <!-- ################################################################################################ -->
      <div id="logo" class="fl_left">
        <h1><a href="Main.jsp">Carrier & Shipment Portal</a></h1>
      </div>
      <nav id="mainav" class="fl_right">
        <ul class="clear">
          <li class="active"><a href="Main.jsp">Home</a></li>
          <li><a class="drop" href="#">Customer</a>
            <ul>
              <li><a href="Cust.jsp">Join</a></li>
              <li><a href="Order_types.jsp">Place Order</a></li>              
              <li><a href="sidebar-right.html">Inbox</a></li>
              
            </ul>
          </li>
          <li><a class="drop" href="#">Carrier</a>
            <ul>
              <li><a href="Carr.jsp">Join</a></li>
              <li><a href="#">Find Deliveries</a></li>
            </ul>
          </li>
                  
            <li><a class="drop" href="#" ><%=session.getAttribute("uname")%></a>
            <ul>
              <li><a href="Carr.jsp">View Order</a></li>
              <li><a href="Main2.jsp">Logout</a></li>
            </ul>
          </li>
          
          <!--<li><a href="#">Carrier LOGIN</a></li> -->
        </ul>
      </nav>
      <!-- ################################################################################################ -->
    </header>
  </div>
  <!-- ################################################################################################ -->
  <!-- ################################################################################################ -->
  <!-- ################################################################################################ -->
  <section id="pageintro" class="hoc">
    <div> 
      <!-- ################################################################################################ -->
      <h2 class="heading">Transportation Made Easy.</h2>
      <p>We make transporting big stuff cheap and easy by helping customers directly connect with transporters who have extra truck space.</p>
      <footer><a class="btn" href="Order_types.jsp">Place Order</a></footer>
      <!-- ################################################################################################ -->
    </div>
  </section>
  <!-- ################################################################################################ -->
</div>
<!-- End Top Background Image Wrapper -->
<!-- ################################################################################################ -->
<!-- ################################################################################################ -->
<div class="row3">
  <main class="hoc container clear"> 
    <!-- main body -->
    <!-- ################################################################################################ -->
    <div class="content"> 
      <!-- ################################################################################################ -->
      <h1 style="text-align: center; font-weight: bolder"> Pick Your Provider and Price<br>Be The Master of Your Domain</h1><br>
      <p> Carrier & Shipment portal marketplace gives you access to thousands of trusted providers who compete for your business, so you can pick your price and ship with confidence.</p>
      <br><br>
      <img class="imgr" src="images/Shipper_HP.jpg" alt="" style="width:500px;height:350px;">
      <p>Carrier & Shipment portal is an open marketplace that connects you with customer-reviewed service providers. If this is not enough to inform your decision, feel free to ask potential providers questions up front or reach out to Member Support.</p>
      <p>No matter what you are shipping a car, a boat, your mother's piano, that massive collection of vinyl records, your uncle s cow, we will help connect you to the right service provider for the job. Take these words of wisdom with you as you get started.</p>
      <p>Bids you receive are only as accurate as your listing details. Provide photographs, detailed descriptions, and the dimensions of your shipment in your listing  anything that you think will make a difference, will make a difference.</p>
      <p>Any shipping business is best done through mobile also. Communicate more efficiently with your service provider, receive shipment status notifications, quickly release payments upon delivery, and more.</p>
      <br><br>
      <img class="imgl" src="images/Carrier_HP.jpg" alt="" style="width:500px;height:350px;">
      <p>  Find lucrative jobs through the latest tools, no matter what you haul.</p>
      <p>Carrier And Shipment Portal is a shipping marketplace that helps you generate new and recurring business by placing competing bids or accepting offers on customers? shipments. With a new shipment posted every 30 seconds on Carrier And Shipment Portal, there?s no shortage of opportunity whether you ship vehicles, furniture, freight, equipment, motorcycles, and more.</p>
      <p>It?s free to join and get started on Carrier And Shipment Portal. We give you all the tools you need to create your profile, find shipments, ask questions, place bids, accept offers and win business. With Carrier And Shipment Portal, you get paid on delivery, and we?re open and transparent about our fees.</p>        
      <br><p>Service providers of every type depend on Carrier And Shipment Portal to keep their trucks filled. Here are some tips for staying ahead of the competition</p>
      </div>
</div>

     <!-- ################################################################################################ -->
<!-- ################################################################################################ -->
<!-- ################################################################################################ -->
<div class="wrapper row4 bgded overlay" style="background-image:color(#191919);">
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
</body>
</html>