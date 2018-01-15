<html>
    <head>
        <title>
            Vehicle Shipment
        </title>
        <meta charset="UTF-8">
        <%@ page import="java.io.*,java.util.*, javax.servlet.*" %>
<%@ page import="java.text.*" %>
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
<link href="layout/styles/layout.css" rel="stylesheet" type="text/css" media="all">
        <link href="bootstrap/css/bootstrap.css" rel="stylesheet" type="text/css" media="all">
        <style type="text/css">
@import "font-awesome.min.css";
@import "font-awesome-ie7.min.css";

/* Space out content a bit */
body {
  background-color: lightgray;
    padding-top: 20px;
  padding-bottom: 20px;
}

/* Everything but the jumbotron gets side spacing for mobile first views */
.header,
.marketing,
.footer {
  padding-right: 15px;
  padding-left: 15px;
}

/* Custom page header */
.header {
  border-bottom: 1px solid #e5e5e5;
}
/* Make the masthead heading the same height as the navigation */
.header h3 {
  padding-bottom: 19px;
  margin-top: 0;
  margin-bottom: 0;
  line-height: 40px;
}

/* Custom page footer */
.footer {
  padding-top: 19px;
  color: #777;
  border-top: 1px solid #e5e5e5;
}

/* Customize container */
@media (min-width: 768px) {
  .container {
    max-width: 730px;
  }
}
.container-narrow > hr {
  margin: 30px 0;
}

/* Main marketing message and sign up button */
.jumbotron {
  text-align: left;
  border-bottom: 1px solid #e5e5e5;
}
.jumbotron .btn {
  padding: 14px 24px;
  font-size: 21px;
}

/* Supporting marketing content */
.marketing {
  margin: 40px 0;
}
.marketing p + h4 {
  margin-top: 28px;
}
.lab{
    font-size: 25px;
    font-weight: bold;
}

/* Responsive: Portrait tablets and up */
@media screen and (min-width: 768px) {
  /* Remove the padding we set earlier */
  .header,
  .marketing,
  .footer {
    padding-right: 0;
    padding-left: 0;
  }
  /* Space out the masthead */
  .header {
    margin-bottom: 30px;
  }
  /* Remove the bottom border on the jumbotron for visual effect */
  .jumbotron {
    border-bottom: 0;
  }
}
</style>
    </head>
<body>
    <div class="row1">
        <header id="header" class="hoc clear"> 
      <!-- ################################################################################################ -->
      <div id="logo" class="fl_left">
        <h1><a href="index.jsp">Carrier & Shipment Portal</a></h1>
      </div>
      <nav id="mainav" class="fl_right">
        <ul class="clear">
          <li class=""><a href="Main2.jsp">Logout</a></li>
                          
         
          
        </ul>
      </nav>
      <!-- ################################################################################################ -->
    </header>
  </div>
    <div class="container">
    <div class="jumbotron" style="padding-top: 20px; background-color: #AAA; height:60px; text-align:center ">
    <h1 class="well">Shipment Order </h1><br><br>
    </div>


    <div class="jumbotron" style="background-color:#AAA;padding-top: 20px">
    <div class="col-lg-12 well">
	<div class="row lab">
            <form action="Shipment_Order_process.jsp" method="post">
            <div class="col-sm-12">
		<div class="col-sm-6 form-group">
			<label>USERNAME*</label>
                        <input type="text" name="uname" placeholder="Enter The Username" class="form-control" required="">
                </div>
                <div class="row ">
                    <div class="col-sm-6 form-group">
                        <label>Category*</label>
                        <select  id="Category" name="category" class="form-control" required="">
                            <option value="vehicle" selected>Vehicles</option>
                            <option value="house">Householde Items</option>
                            <option value="moves" >Moves</option>
                            <option value="other">Other</option>
                        </select>

                    </div>
                    
                    <div class="col-sm-6 form-group">
			<label>Type*</label>
                        <input type="text" name="type" required="" placeholder="Enter The Item Type" class="form-control">
                    </div>
                </div>					
                <div class="form-group">
                    <label>Item Name*</label>
                    <textarea name="iname" placeholder="Enter The Item Name Here.." rows="3" class="form-control"></textarea>
		</div>	
				
		<div class="form-group">
                    <label>size</label>
                    <input  type="text" name="size" placeholder="Enter The Size Here.." class="form-control">
		</div>		
		<div class="form-group">
                    <label>weight*</label>
                    <input type="text" name="weight" placeholder="Enter The Weight Here.." class="form-control">
		</div>
                <div >
                    <label style=" font-weight: bold">DISTANCE 0~(ESTIMATE KM)*</label>
			<select  id="dis" name="dis" class="form-control">
                            <option> Select suitable distance</option>
                            <option value="50">0-50</option>
                            <option value="100">100</option>
                            <option value="150" >150</option>
                            <option value="200">200</option>
                            <option value="250">250</option>
                            <option value="300">300</option>
                            <option value="350" >350</option>
                            <option value="400">400</option>
                            <option value="450">450</option>
                            <option value="500">500</option>
                            <option value="550" >550</option>
                            <option value="600">600</option>
                            <option value="650">650</option>
                            <option value="700">700</option>
                            <option value="750" >750</option>
                            <option value="800">800</option>
                            <option value="850">850</option>
                            <option value="900">900</option>
                            <option value="950" >950</option>
                            <option value="1000">1000</option>
                            <option value="1050">1050</option>
                            <option value="1100">1100</option>
                            <option value="1150" >1150</option>
                            <option value="1200">1200</option>
                            <option value="1250">1250</option>
                            <option value="1300">1300</option>
                            <option value="1350" >1350</option>
                            <option value="1400">1400</option>
                        </select>

                </div><br>
		
					
		<div class="form-group">
                    
						<label >Estimated Delivery Date</label>
						<input type="text" name="edate" class="form-control />
						
					
		</div>		
		<div class="form-group">
                    <label>Collect Street*</label>
                    <input type="text" name="collstr" placeholder="Enter collect Street Here.." class="form-control" />
		</div>	
		<div class="form-group">
                    <label>Collect City*</label>
                    <input type="text" name="collcity" placeholder="Enter Destination City Here.." class="form-control">
		</div>
		<div class="form-group">
                    <label>Destination Street*</label>
                    <input type="text" name="desstr" placeholder="Enter Destination Street Here.." class="form-control">
		</div>
		<div class="form-group">
                    <label>Destination City*</label>
                    <input type="text" name="destcity" placeholder="Enter Destination City Here.." class="form-control">
		</div><br>
                <p style=" font-size: 20px; font-weight: lighter">* fields are menditory</p>
                <%
                
                    Date dNow = new Date( );
                    SimpleDateFormat fd = new SimpleDateFormat ("dd.MM.yyyy");
                    SimpleDateFormat ft = new SimpleDateFormat ("hh.mm");
                    //out.print( "<h2 align=\"center\">" + fd.format(dNow) + "</h2>");
                %>
                <input type="hidden" name="date" value="<%=fd.format(dNow)%>" class="form-control">
                <input type="hidden" name="time" value="<%=ft.format(dNow)%>" class="form-control">
                <input type="submit" class="btn btn-lg btn-info" style="background-color: royalblue" value="Submit>>">					
                
            </div>
	</form> 
    </div>
</div>
        </div>
    </div>
    <div class=" row4 bgded overlay" style="background-color: #191919">
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
