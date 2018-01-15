
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="">
<head>
<title>Carrier Portal</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
<link href="layout/styles/layout.css" rel="stylesheet" type="text/css" media="all">
<% String name = (String)session.getAttribute("username"); %>
<style type="text/css">
    body{
		background-image:url(images/cube.jpg);
		background-size: 100%;
                background-attachment:fixed;
                background-position: center top;
    }
    </style>
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
          
            <li><a class="drop" href="#" >Welcome <%out.println(name);  %></a>
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
      <h3 class="heading"><b>User Profile: <%//out.println(name);%></b> Choose What to do!!!</h3>
    </div>
    <div class="group excerpts">
      <form action="Shipment_category.jsp" method="post">
        <article class="one_third first">
        <div class="hgroup">
          <h5 class="heading">PLACE NEW ORDER</h5>
          <em></em>
        </div>
          
          
          <figure> <img src="images/place_order.png" style="width: 360px; height: 250px" onclick="" alt=""></figure>
          
          <input type="hidden" name="name" value="<%=name%>">
          <center><input type="submit" value=" Click here for placing new order "></center>     
          <div class="txtwrap">
          <p></p>
        </div>
      </article>
              
        </form>
          <form action="Mail.jsp" method="all">
      <article class="one_third">
        <div class="hgroup">
          <h5 class="heading">INBOX</h5>
          <em></em></div>
          <figure><a href=""><img src="images/inbox.png" style="width: 360px; height: 250px" alt=""></a></figure>
          <input type="hidden" name="name" value="<%=name%>">
          <center><input type="submit" value=" Click here for Viewing new Replies"></center>
          <div class="txtwrap">
          <p></p>
        </div>
      </article>
        </form>
      <form action="View_Orders.jsp" method="post">
        <article class="one_third">
        <div class="hgroup">
          <h5 class="heading">VIEW ORDERS</h5>
          <em></em></div>
        <figure><img src="images/vieworder.png" style="width: 360px; height: 250px" alt=""></figure>
        <input type="hidden" name="name" value="<%=name%>">
          <center><input type="submit" value=" Click here for Order History"></center>
        <div class="txtwrap">
          <p></p>
        </div>
        </article></form>
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
    