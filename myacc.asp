<%@LANGUAGE="VBSCRIPT"%>
<html>
	<head>
		<title> My Account</title>
		<link rel="stylesheet" type="text/css" href="css/foodcorner.css" />
		
    <style type="text/css">
<!--
#apDiv1 {
	position:absolute;
	width:392px;
	height:283px;
	z-index:1;
	left: 661px;
	top: 170px;
}
#apDiv2 {
	position:absolute;
	width:200px;
	height:115px;
	z-index:2;
	left: 207px;
	top: 169px;
}
-->
    </style>
	</head>
<body>
		<center>
        	<img src="images/header.png">
<table width="750" border="5" cellpadding="0" cellspacing="0">
        		<tr>
                	<td align="center" bgcolor="#000000"><a href="home.asp" target="_parent">HOMEPAGE</a></td>
					<td align="center" bgcolor="#000000"><a href="mytray.asp" target="_parent">MY TRAY</a></td>
                 	<td align="center" bgcolor="#000000"><a href="myacc.asp" target="_parent"><font color="#FF0000">MY ACCOUNT</font></a></td>
                   	<td align="center" bgcolor="#000000"><a href="aboutus.html" target="_parent">ABOUT US</a></td>
                   	<td align="center" bgcolor="#000000"><a href="logout.asp" target="_parent">LOGOUT</a></td>
                </tr>
        	</table></center>
    		<br /><br /><br />
    		<div id="apDiv2">
         							<%
										SET MyConn=Server.CreateObject("ADODB.Connection")
													MyConn.Provider="Microsoft.Jet.OLEDB.4.0"
			MyConn.Open "C:\Inetpub\wwwroot\foodcorner\db\food.mdb"
										cook=Session("Username")
										SET RS=MyConn.EXECUTE("select * from userdb where username='" & cook & "'")
									%>
<table width="411" height="293" border="5" cellpadding="5" cellspacing="5">
     									<tr>
											<td width="132"><b><font size="+1">NAME</font></b></td>
                                            <td width="164"><font size="+1"><i><% Response.Write(RS(0) & " " & RS(1)) %></i></font></td>
										</tr>
										<tr>
  											<td><b><font size="+1">ADDRESS</font></b></td>
                                            <td><font size="+1"><i><% Response.Write(RS(5) & "<br>" & RS(6) & "<br>" & RS(7) & "<br>" & RS(8) & "<br>" & RS(9))%></i></font></td>
										</tr>
										<tr>
											<td><b><font size="+1">CONTACT</font></b></td>
                                            <td><font size="+1"><i><% Response.Write(RS(10))%></i></font></td>
										</tr>
                                        <tr>
											<td><font size="+1"><b><font size="+1">EMAIL ID</font></b></td>
                                            <td><font size="+1"><i><% Response.Write(RS(11))%></i></font></td>
										</tr>
                                        <tr><td colspan="2" align="center" bgcolor="#000000"><font color="#FFFFFF" size="+1"><a href="update.html">EDIT YOUR DETAILS</a></font></td></tr>
                                        <tr><td colspan="2" align="center" bgcolor="#000000"><font color="#FFFFFF" size="+1"><a href="feedback.html">FEEDBACK</a></font></td></tr>
                               	</table>

<br>
                                    <br>
           							<%
										RS.Close
										MyConn.Close
									%></div>
    		<br /><br />
			<div id="apDiv1"><img src="images/3d human 2.jpg" width="300" height="300"></div>
                              
    
</body>
</html>
