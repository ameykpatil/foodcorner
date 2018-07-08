<%@LANGUAGE="VBSCRIPT"%>
<html>
	<head>
		<title>Thank You</title>
        <link rel="stylesheet" type="text/css" href="css/foodcorner.css" />
       
    <style type="text/css">
<!--
#apDiv1 {
	position:absolute;
	width:509px;
	height:473px;
	z-index:1;
	left: 124px;
	top: 168px;
}
#apDiv2 {
	position:absolute;
	width:200px;
	height:421px;
	z-index:2;
	left: 666px;
	top: 168px;
}
-->
    </style>
	</head>
	<center>
		<body>
			<img src="images/header.png">
      		<table width="123" border="5" cellpadding="0" cellspacing="0" bgcolor="#000000"><tr><td align="center" bgcolor="#000000" width="100" height="15"><font face="Trebuchet MS, Arial, Helvetica, sans-serif" color="#FFFFFF" size="4">THANK YOU</font></td></tr></table>
            
			<div id="apDiv1"><%
				SET MyConn=Server.CreateObject("ADODB.Connection")
													MyConn.Provider="Microsoft.Jet.OLEDB.4.0"
			MyConn.Open "C:\Inetpub\wwwroot\foodcorner\db\food.mdb"
				SET RS=MyConn.EXECUTE("select * from userdb where username='" & Session("Username") & "'")
	      	%>
           <%Response.Write(RS(0) & " " & RS(1))%>
							<p>Your order will be processed manually and will be delivered to<br><%Response.Write(RS(5))%><br><%Response.Write(RS(6))%><br><%Response.Write(RS(7) & " - " & RS(8))%><br><%Response.Write(RS(9))%><br></p>
                            <%RS=MyConn.EXECUTE("delete * from tray where username='" & Session("Username") & "'")%>
							<p>We'll contact you via phone and/or e-mail if we have any problem processing your order/payment.</p></td></tr>
								<p>We have a countrywide network of delivery offices which coordinate with the closest food joint and arrange for delivery of your order. The order will be delivered by an employee of <b>FOODCORNER&reg;</b>.<br>Most items will be delivered within 1 hour of the placement of the order except when delays occur due to unfortunate mishaps or traffic.</p></td></tr>
								<p>Please e-mail us at <b>feedback@foodcorner.com</b> to let us know how you view your shopping experience, any improvement suggestions, and any problems you encountered.</p></td></tr>
                       
    						<br>
							<p>THANK YOU FOR PLACING YOUR ORDER WITH US</p>
								
  			 						
            				
            </div>
        <div id="apDiv2"><img src="images/3d human 9.jpg" width="300" height="300"><br><table border="5" cellpadding="0" cellspacing="0" bgcolor="#000000" align="center">
                						<tr>
                							<td align="center" bgcolor="#000000" width="100" height="15">
                    							<font face="Trebuchet MS, Arial, Helvetica, sans-serif" color="#FFFFFF" size="4"><a href="home.asp">HOMEPAGE</a></font>
                    						</td>
                                           
                                            <td align="center" bgcolor="#000000" width="100" height="15">
                    							<font face="Trebuchet MS, Arial, Helvetica, sans-serif" color="#FFFFFF" size="4"><a href="logout.asp">LOGOUT</a></font>
                    						</td>
                						</tr>
      								</table></div>
	  </body>
	</center>
</html>