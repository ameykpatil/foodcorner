<%@LANGUAGE="VBSCRIPT"%>
<html>
	<head>
		<title> My Tray</title>
		<link rel="stylesheet" type="text/css" href="css/foodcorner.css" />
</head>
	<center>
		<body>
    		<img src="images/header.png">
        	<table width="750" border="5" cellpadding="0" cellspacing="0">
        		<tr>
                	<td align="center" bgcolor="#000000"><a href="home.asp" target="_parent">HOMEPAGE</a></td>
					<td align="center" bgcolor="#000000"><a href="mytray.asp" target="_parent"><font color="#FF0000">MY TRAY</font></a></td>
                 	<td align="center" bgcolor="#000000"><a href="myacc.asp" target="_parent">MY ACCOUNT</a></td>
                   	<td align="center" bgcolor="#000000"><a href="aboutus.html" target="_parent">ABOUT US</a></td>
                   	<td align="center" bgcolor="#000000"><a href="logout.asp" target="_parent">LOGOUT</a></td>
                </tr>
        	</table>
    		<br />
			
									<%
										SET MyConn=Server.CreateObject("ADODB.Connection")
										MdbFilePath=Server.MapPath("db\food.mdb")
										MyConn.Open "Driver={Microsoft Access Driver (*.mdb)}; DBQ=" & MdbFilePath & ";"
										cook=Session("Username")
										total=0
										SET RS=MyConn.EXECUTE("select * from tray where username='" & cook & "'")
										IF RS.Eof THEN
									%>
									YOUR TRAY CURRENTLY IS EMPTY
                                    <br>
                                    <br>
									
									<%	else
									response.Write("<table border='5' cellpadding='5' cellspacing='5'>")
									response.Write("<th width='150' style='font-size:18px;font-family:'Trebuchet MS', Arial, Helvetica, sans-serif'>NAME</th><th width='150' style='font-size:18px;font-family:'Trebuchet MS', Arial, Helvetica, sans-serif'>QUANTITY</th><th width='150' style='font-size:18px;font-family:'Trebuchet MS', Arial, Helvetica, sans-serif'>COST</th>")
									Do while (RS.eof=false)
									pid=RS("pid")
									quant=RS("quantity")
									set disp=MyConn.execute("select * from fooditems where ID=" & pid)
									total=total+quant*disp(2)
								%>
									<tr>
                                    	<td align='center'><font size="+1" face="Trebuchet MS"><i><%=disp(1)%></i></font></td>
                						<td align='center' style="font-size:18px;font-family:Trebuchet MS, Arial, Helvetica, sans-serif"><b><%=quant%></b></td>
	                					<td align='center' style="font-size:18px;font-family:Trebuchet MS, Arial, Helvetica, sans-serif"><b><%=quant*disp(2)%></b></td>
    	            					<td><table border="5" cellspacing="0" cellpadding="0"><tr><td bgcolor="#000000" width="100" height="15" align="center"><a href="remove.asp?pid=<%Response.Write(pid)%>">REMOVE</a></td></tr></table></td>
        	    					</tr>
									<%
										RS.Movenext
										LOOP
									%>
							        <tr>
            							<td colspan="2" style="font-size:18px;font-family:'Trebuchet MS', Arial, Helvetica, sans-serif" align="right"><b>TOTAL : &nbsp;</b></td>
                						<td align="center" style="font-size:18px;font-family:Trebuchet MS, Arial, Helvetica, sans-serif"><b><%=total%></b>
											<tr>
                                            	<td align="center">
                                                	<table border="5" cellspacing="0" cellpadding="0">
                                                    	<tr>
                                                        	<td bgcolor="#000000" width="150" height="15" align="center">
                                                            	<a href="javascript:history.back()">BACK</a>
                                                            </td>
                                                        </tr>
                                                    </table>
                                        		</td>
                        						<td>&nbsp;</td>
  												<td align="center"><table border="5" cellspacing="0" cellpadding="0"><tr><td bgcolor="#000000" width="150" height="15" align="center"><a href="credit.html">CONFIRM</a></td></tr></table></td>
                    						</tr>
											<% END IF %>
									</table>
									<%
										RS.Close	
										MyConn.Close
									%>
                            	
		</body>
	</center>
</html>