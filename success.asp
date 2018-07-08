<%@LANGUAGE="VBSCRIPT"%>
<html>
	<head>
		<link href="css/foodcorner.css" rel="stylesheet" type="text/css" />
		<title>Registration Status</title>
	</head>
	<body>
		<p align="left">
			<%
                SET MyConn=Server.CreateObject("ADODB.Connection")
					MdbFilePath=Server.MapPath("db\food.mdb")
										MyConn.Open "Driver={Microsoft Access Driver (*.mdb)}; DBQ=" & MdbFilePath & ";"
			
                SET RS=MyConn.EXECUTE("select username from userdb where username='" & Request.Form("usr") & "'")
                IF RS.Eof THEN
				sql="insert into userdb(fname,lname,sex,username,password,add1,add2,city,pincode,state,tele,email,occupation)"
sql=sql & "values('"& request.Form("first") & "','"& request.Form("last") & "','" & request.Form("gender") & "','" & request.Form("usr")
sql=sql & "','" & request.Form("pass") & "','" & request.Form("add1") & "','" & request.Form("add2") & "','" & request.Form("city")
sql=sql & "','" & request.Form("pin") & "','" & request.Form("state") & "','" & request.Form("tel") & "','" & request.Form("email") & "','" & request.Form("occ") & "')"
MyConn.execute(sql)
                    
                    Response.write("<p align='center'><font face='Trebuchet MS'><b>CONGRATULATIONS !!! YOU HAVE SUCCESSFULLY REGISTERED</b></font></p>")
                    Response.write("<table align='center' cellpadding='0' cellspacing='0' border='5'><tr><td align='center' bgcolor='#000000'><font face='Trebuchet MS'><a href='http://localhost/foodcorner/login.asp' target='_parent'>LOGIN</a></font></td></tr></table>")
                ELSE
                    Response.write("<p align='center'><font face='Trebuchet MS'><b>USERNAME ALREADY TAKEN</b></font></p>")
                    Response.write("<p align='center'><font face='Trebuchet MS'><b>PLEASE GO BACK AND SELECT ANOTHER USERNAME</b></font></p>")
            %>
            <table align="center" cellpadding="0" cellspacing="0" border="5">
				<tr>
					<td align="center" bgcolor="#000000">
                    	<a href="javascript:history.back()">
                        	<font color="#FFFFFF" face="Trebuchet MS, Arial, Helvetica, sans-serif" size="4">BACK</font>
                        </a>
                    </td>
				</tr>
			</table>
			<%
				END IF
				RS.Close
				MyConn.Close
			%>
		</p>
	</body>
</html>