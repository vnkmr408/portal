
<!DOCTYPE html>
<html>

<head>
	<%@ page import="java.io.*,java.util.*, javax.servlet.*" %>
<%@ page import="java.text.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
  <meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
<link href="layout/styles/layout.css" rel="stylesheet" type="text/css" media="all">
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

<!-- Optional theme -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">

	<title>Placing Vehicle order</title>
	<style type="text/css">
	body{
		background-image:url(images/House_hold.jpg);
		background-size: 100%;
                background-attachment:fixed;
                background-position: center top;
	}
	#left{
		width: 500px;
		height: 800px;
		background-color: rgba(0, 0, 0, 0.8);
		margin: auto;
                align-content: center;
		margin-top: 70px;
                margin-bottom: 150px;
                padding-right:100px;
		padding-top: 10px;
                padding-left: 100px;
		font-weight: bold;
                color: black;
                border-radius: 15px;
                -webkit-border-radius: 15px;               
	}
	#left input[type="submit"]{
                width: 80px;
                hight: 100px;
		background-color: skyblue;
		font-weight: bold;
                border-radius: 15px
	}
        
        #left input{
                width: 300px;
                hight: 10px;
	}
        
        .bgded{
            background-position:top center;
            background-repeat:no-repeat;
            background-size:cover;
        }
        .wrapper{
            display:block;
            position:relative;
            width:100%;
            margin:0;
            padding:0;
            text-align:left;
            word-wrap:break-word;
        }
        h2{
            font-size: 50px;
            font-family: fantasy;
            font-weight: bolder;
            
        }
        .verticle{
            border-left: 3px solid white;
            height: 800px;
            float: left;
        }
        .wrap{
            width: 450px;
            
        }
        
			
	</style>
        <body> 
            
            
  <!-- ################################################################################################ -->
  <div class="wrapper row1">
    <header id="header" class="hoc clear"> 
      <!-- ################################################################################################ -->
      <div id="logo" class="fl_left">
        <h1><a href="Main2.jsp">Carrier & Shipment Portal</a></h1>
      </div>
      <nav id="mainav" class="fl_right">
        <ul class="clear">
            <%String name=request.getParameter("name");%>
          <li><a class="drop" href="#" >Welcome <%out.println(name);  %></a>
            <ul>
              <li><a href="Carr.jsp">Update Profile</a></li>
              <li><a href="Main2.jsp">Logout</a></li>
            </ul>
          </li>
          <!--<li><a href="#">Carrier LOGIN</a></li> -->
        </ul>
      </nav>
      <!-- ################################################################################################ -->
    </header>
  </div>
  
        <div id="left">
            <h2 style="font-size:35px;color:white ; ">House Hold Items</h2><br>
            <form align="center" action="Order_vehicle_process.jsp" method="post">
		<input type="hidden" name="category" value="Vehicle">
                <input type="hidden" name="status" value="Pending">
                        	
                <input type="hidden" value="<%=name%>" name="username"  required><br>                      
                        
                        <label style="font-size: 20px; font-style:oblique; color:chartreuse;">Type:</label>
						<select name="type" id="Category" class="form-control">
							<option value="Furniture">Furniture</option>
                                                        <option value="Electronic Appliances">Electronic Appliances</option>
                                                        <option value="Kitchen Items">Kitchen Items</option>
                                                        <option value="Art and Glass">Art and Glass</option>
						</select><br>
                       
                        <label style="font-size: 20px; font-style:oblique; color:chartreuse;">Item Name*:</label>
                        <input type="text" placeholder="Enter your item name here" name="item_name"  required><br>                      
                        <label style="font-size: 20px; font-style:oblique; color:chartreuse;">Dimensions*:</label>
                        <input type="text" placeholder="Enter the Product l x w x h" name="size"  required><br>                      
                        <label style="font-size: 20px; font-style:oblique; color:chartreuse;">Weight*:</label>
                        <input type="text" placeholder="Enter the product weight" name="weight"  required><br>                      
                      
                        <label style="font-size: 20px; font-style:oblique;color:chartreuse">Pickup Location*:</label>
                        <input type="text" placeholder="Enter collect street" name="collect_street" required><br>
						  
						
						<label style="font-size: 20px; font-style:oblique;color:chartreuse">Delivery Location*:</label>
                        <input type="text" placeholder="Enter destination street" name="destination_street" required><br>
						<!--<label style="font-size: 20px; font-style:oblique; color:chartreuse;">upload picture*:</label>
						<input type="file" name="filename" placeholder="Enter your upload picture" accept="image/gif, image/jpeg, image/png">
                                                --><%
                                                    Date d = new Date();
                        SimpleDateFormat fd = new SimpleDateFormat ("dd/MM/yyyy");
                        SimpleDateFormat ft = new SimpleDateFormat ("hh:mm");
                                                %>
                                                <input type="hidden" name="date" value=<%=fd.format(d)%>>
                                                <input type="hidden" name="time" value=<%=ft.format(d)%>>
                       
						<br>
                <input type="submit" style="width:120px" height="60px" value="Proceed>>">
                            
                        
		</form>	
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
