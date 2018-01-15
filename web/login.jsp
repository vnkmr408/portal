<%-- 
    Document   : login
    Created on : 15 Mar, 2017, 1:41:36 PM
    Author     : nightmare
--%>

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

	<title>Login</title>
	<style type="text/css">
	body{
		background-image:url(images/blue.jpg);
		background-size: cover;
                background-attachment:fixed;
                background-position: center top;
	}
	#left{
		width: 500px;
		height: 470px;
		background-color: rgba(0,0,0,0.8);
		margin:0 auto;
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
	#left input[type="button"]{
                width: 120px;
                hight: 100px;
		background-color: skyblue;
		font-weight: bold;
                border-radius: 15px
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
        h1{
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
          <li><a class="drop" href="#">Customer</a>
            <ul>
              <li><a href="Cust.jsp">Join</a></li>
                            
            </ul>
          </li>
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
            
            <form action="login_process.jsp" method="post">
                
                <h1 style="color:lightgrey">Login</h1><br>
                     
                        <label style="font-size: 20px; font-style:oblique; color:whitesmoke">Login As:</label>
                       
                        <select name="user" value="user">
                            <option value="Admin" name="Admin">Admin</option>
                            <option value="Customer" name="Customer">Customer</option>
                            <option value="Carrier" name="Carrier">Carrier</option>
                        </select><br><br>
                        </td>
                    </tr>
                        <label style="font-size: 20px; font-style:oblique;color:whitesmoke">User name:</label>
                        <input type="text" placeholder="Enter your user name" name="uname"><br>
			<label for="male" style="font-size: 20px; font-style:oblique;color:whitesmoke  ">Password:</label>
                        <input type="password" placeholder="Enter your password" name="pass"><br>
			<div id=".wrap">
                            <input type="submit" value="Login" style="float:left;"/>
                            <!--  <input type="button" onclick="location.href='Customer_Registration.jsp';" value="Customer Register" style="width:240px;" /> -->                            
                        </div>
                 
		</form>	
            <form action="Forgotpasswd.jsp" >
            <input type="submit" value="Forgot!!"  style="float:contour;"/><br>
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
