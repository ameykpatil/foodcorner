<%@LANGUAGE="VBSCRIPT"%>
<html>
<head>
<title>REMOVING...</title>
</head>
<body>
<%
Dim objConn,DSN,sql,oRs,cook,trans,pid,quant
set objConn=Server.CreateObject("ADODB.Connection")
				MdbFilePath=Server.MapPath("db\food.mdb")
										objConn.Open "Driver={Microsoft Access Driver (*.mdb)}; DBQ=" & MdbFilePath & ";"
			
			
cook=Session("Username")
pid=request.QueryString("pid")
sql="select * from tray where username='" & cook & "' and id='" & pid & "'" 
set oRs=objConn.execute(sql)
quant=oRs("quantity")
if quant>1 then
objConn.execute("update tray set quantity="&oRs("quantity")-1&" where id='" & pid & "' and username='" & cook & "'")
else
sql="delete * from tray where pid='" & pid & "' and username='" & cook & "' and trans='" & trans & "'"
objConn.execute(sql)
end if
oRs.close
objConn.close
response.AddHeader "Refresh", "0;URL=mytray.asp"
%>
</body>
</html>
