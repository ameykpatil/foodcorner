<html>
	<body>
    	<%
			set objConn=Server.CreateObject("ADODB.Connection")
			objConn.Provider="Microsoft.Jet.OLEDB.4.0"
			objConn.Open "C:\Inetpub\wwwroot\foodcorner\db\food.mdb"
cook=Session("Username")
sql="update userdb set fname='" & request.Form("first") & "', lname='" & request.Form("last") & "',"
sql=sql & " add1='" & request.Form("add1") & "', add2='" & request.Form("add2") & "',password='" & request.Form("newpass") & "',"
sql=sql & " city='" & request.Form("city") & "', pincode='" & request.Form("pin") & "',"
sql=sql & " state='" & request.Form("state") & "', tele='" & request.Form("tel") & "', email='" & request.Form("email") & "'"
sql=sql & "where username like '" & cook & "'"
objConn.execute(sql)
response.AddHeader "Refresh", "0;URL=myacc.asp"
objConn.close
%>
    </body>
</html>