<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>

  <meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
<link href="layout/styles/layout.css" rel="stylesheet" type="text/css" media="all">
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

<!-- Optional theme -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">

	<title>Customer Registration</title>
	<style type="text/css">
	body{
		background-image:url(images/customer.jpg);
		background-size: 100%;
                background-attachment:fixed;
                background-position: center top;
	}
	#left{
		width: 500px;
		height: 1350px;
		background-color: rgba(0, 0, 0, 0.5);
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
          <li class="active"><a href="Main2.jsp">Home</a></li>
          
          <li><a class="drop" href="#">Carrier</a>
            <ul>
              <li><a href="Carr.jsp">Join</a></li>
              
            </ul>
          </li>
          <li><a href="login.jsp">LOGIN</a></li>
          <!--<li><a href="#">Carrier LOGIN</a></li> -->
        </ul>
      </nav>
      <!-- ################################################################################################ -->
    </header>
  </div>
  
        <div id="left">
            <h2 style="font-size:35px;color:white ; ">Customer Registration</h2><br>
            <form align="center" action="Cust_process.jsp" method="full">
			
                        <label style="font-size: 20px; font-style:oblique; color:chartreuse;">First Name:</label>
                        <input type="text" placeholder="Enter your first name" name="fname"  required><br>
                        <label style="font-size: 20px; font-style:oblique; color:chartreuse;">Last Name:</label>
                        <input type="text" placeholder="Enter your last name" name="lname" required><br>
                        <label style="font-size: 20px; font-style:oblique;color:chartreuse">Address:</label>
                        <input type="text" placeholder="Enter your Address" name="address" required><br>
                        <label style="font-size: 20px; font-style:oblique;color:chartreuse">City:</label>
                        <input type="text" placeholder="Enter your City" name="city" required><br>                        
			<label style="font-size: 20px; font-style:oblique;color:chartreuse">State:</label>
                        <input type="text" placeholder="Enter your State" name="state" required><br>
                        <label style="font-size: 20px; font-style:oblique; color:chartreuse">Mobile No.:</label>
                        <input type="text" placeholder="Enter your 10-digits no." name="mno"id="mno" maxlength="10"><br>
                        
                        <label style="font-size: 20px; font-style:oblique;color:chartreuse">E-m@il:</label>
                        <input type="email" placeholder="Enter your E-mail" name="email"><br>
			<label style="font-size: 20px; font-style:oblique;color:chartreuse">Landmark:</label>
                        <input type="text" placeholder="Enter your Landmark" name="landmark" required><br>
                        <label style="font-size: 20px; font-style:oblique;color:chartreuse">Pincode:</label>
                        <input type="text" placeholder="Enter your city-Pincode" name="pin" pattern="[0-9]{6}"><br>
                        <label style="font-size: 20px; font-style:oblique;color:chartreuse">Username:</label>
                        <input type="text" placeholder="Enter your Login Username" name="username" pattern="^[a-z\d\.]{5,}$" required><br>
                        
                        <label style="font-size: 20px; font-style:oblique;color:chartreuse">Password:</label>
                        <input type="password" placeholder="Enter your Login Password" name="passwd" required><br><br>
                        <input type="submit" id="button1" value="Signup">&nbsp&nbsp
                        <input type="submit" href="Cust.jsp" value="Cancel">
                            
                        
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
          <li><a href="#">Sitemap</a></li>
        </ul>
      </nav>
    </div>
    <div class="one_third">
      
      <ul class="faico clear">
        <li><a class="faicon-facebook" href="#"><i class="fa fa-facebook"></i></a></li>
        <li><a class="faicon-twitter" href="#"><i class="fa fa-twitter"></i></a></li>
        <li><a class="faicon-dribble" href="#"><i class="fa fa-dribbble"></i></a></li>
        <li><a class="faicon-linkedin" href="#"><i class="fa fa-linkedin"></i></a></li>
        <li><a class="faicon-google-plus" href="#"><i class="fa fa-google-plus"></i></a></li>
        <li><a class="faicon-vk" href="#"><i class="fa fa-vk"></i></a></li>
      </ul>
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
