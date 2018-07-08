<html>
	<head>
    	<title>Welcome To FoodCorner</title>
    	<link href="css/foodcorner.css" rel="stylesheet" type="text/css" />
    	<style type="text/css">
			<!--
				#Div1 
				{
					position:absolute;
					width:566px;
					height:158px;
					z-index:1;
					left: 57px;
					top: 254px;
				}
				#Div4 
				{
					position:absolute;
					width:566px;
					height:158px;
					z-index:1;
					left: 61px;
					top: 576px;
				}
				#Div2 
				{
					position:absolute;
					width:533px;
					height:55px;
					z-index:2;
					left: 53px;
					top: 141px;
				}
				#Div3 
				{
					position:absolute;
					width:310px;
					height:307px;
					z-index:3;
					left: 586px;
					top: 145px;
				}
			-->
        </style>
	</head>
<body>
		<center><img src="images/header.png" width="560" height="75"></center>
		<table border="5" cellpadding="0" cellspacing="0" bgcolor="#000000" align="center"><tr><td align="center" bgcolor="#000000" width="100" height="15"><font face="Trebuchet MS, Arial, Helvetica, sans-serif" color="#FFFFFF" size="4">WELCOME</font></td></tr></table>
		<br>
        <br>
		<div id="Div1">
		  	
  <p><b>FoodCorner&reg;</b> is part of an online food portal community which brings 
    delivery of food products from world class brands right at the click of a 
    button.</p>
		  	<p>We provide services for ordering food products from different branded franchises like <b>McDonalds&#8482;, Baskin Robbins&#8482;, Dominos Pizza&#8482;, Kentucky Fried Chicken&#8482;</b> using the ease of internet.</p><p>We are growing strong, with 2000+ members already registered with us.Please <b>login</b> or <b>register</b> with us for a mouthwatering experience !!!</p>
		</div>
		<div id="Div2">
        	<form name="frm" method="post" action="check.asp">
                New User ? <a href="register.html" target="_parent"><blink><font color="#0000FF"><b>CLICK HERE</b></font></blink></a>
                <br>
                <input type="text" name="username" size="25" value="Enter Username" onFocus="if(this.value=='Enter Username')this.value='';" onBlur="if(this.value=='')this.value='Enter Username';">
                <% IF Session("Authenticated") = 2 THEN Response.Write("<font color='red'>INVALID USERNAME OR PASSWORD</font>") END IF %>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <input type="text" name="password" size="25" value="Enter Password" onFocus="if(this.value=='Enter Password')this.value='';this.type='password';" onBlur="if(this.value=='')this.value='Enter Password'this.type='text';">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <input type="Submit" value="SIGN IN">
            </form>
        </div>
		<div id="Div3"><img src="images/3d human1.jpg" border="0"></div>
<div id="Div1"> 
  <p><b>FoodCorner&reg;</b> is part of an online food portal community which brings 
    delivery of food products from world class brands right at the click of a 
    button.</p>
  <p>We provide services for ordering food products from different branded franchises 
    like <b>McDonalds&#8482;, Baskin Robbins&#8482;, Dominos Pizza&#8482;, Kentucky 
    Fried Chicken&#8482;</b> using the ease of internet.</p>
  <p>We are growing strong, with 2000+ members already registered with us.Please 
    <b>login</b> or <b>register</b> with us for a mouthwatering experience !!!</p>
</div>
<div id="Div4"> 
  <object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=6,0,29,0" width="900" height="200">
    <param name="movie" value="images/homesplash.swf">
    <param name="quality" value="high">
    <embed src="images/homesplash.swf" quality="high" pluginspage="http://www.macromedia.com/go/getflashplayer" type="application/x-shockwave-flash" width="900" height="200"></embed></object>
</div>
</body>
</html>