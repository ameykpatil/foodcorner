<%@LANGUAGE="VBSCRIPT"%>
<html>
	<body>
		<%
			SET MyConn=Server.CreateObject("ADODB.Connection")
						MyConn.Provider="Microsoft.Jet.OLEDB.4.0"
			MyConn.Open "C:\Inetpub\wwwroot\foodcorner\db\food.mdb"
			usr=Session("Username")
			MyConn.execute("delete * from tray where username='"& usr & "'")
			MyConn.close
			Session.Abandon()
			Response.AddHeader "Refresh", "0;URL=http://localhost/foodcorner/login.asp"
		%>
	</body>
</html>
