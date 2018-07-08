<html>
	<body>
		<%
			SET MyConn=Server.CreateObject("ADODB.Connection")
			MyConn.Provider="Microsoft.Jet.OLEDB.4.0"
			MyConn.Open "C:\Inetpub\wwwroot\foodcorner\db\food.mdb"
			SET RS=MyConn.EXECUTE("select username from userdb where username='" & Request.Form("username") & "' AND password='" & Request.Form("password") & "'")
			IF RS.Eof THEN
				Session("Authenticated")=2
				Response.AddHeader "Refresh", "0;URL=login.asp"
			ELSE
				Session("Username")=RS("username")
				Response.Redirect("home.asp")
			END IF
			RS.Close
			MyConn.Close
		%>
	</body>
</html>
