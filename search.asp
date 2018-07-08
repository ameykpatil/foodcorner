<%@LANGUAGE="VBSCRIPT"%>
<html>
<head>
<title>SEARCH RESULTS</title>
<link href="css/foodstreet.css" rel="stylesheet" type="text/css">
</head>
<center>
<body class="foodstreet">
<%
Dim objConn,DSN,sql,oRs,i,j,ser
set objConn=Server.CreateObject("ADODB.Connection")
DSN="DSN=conn"
objConn.open(DSN)
ser=request.Form("ser")
set oRs=objConn.execute("select * from fooditems where item like '%"&ser&"%'")
%>
<br>
<table border="0" cellpadding="5" cellspacing="5" width="250">
<th colspan="3" align="center">SEARCH RESULTS FOR<br><i>"<%=ser%>"</i></th>
<%
if oRs.eof then
%>
<tr><td colspan="3" align="center">SORRY ! NO SUCH FOOD ITEM FOUND</td></tr>
<%
else
while oRs.eof=false
%>
<tr><td width="60"><%=oRs("item")%></td><td align="center" width="150"><a href="product.asp?pid=<%=oRs("ID")%>&rate=0" target="menudisp"><img src="food/ebig/<%=oRs("image")%>" width="100" height="100" border="0"></a></td><td width="40">Rs.<%=oRs("cost")%></td></tr>
<%
oRs.Movenext
Wend
end if
oRs.close
objConn.close%>
<tr><td></td><td><div align="center"><a href="searchbox.html" target="search"><img src="common/back.png" width="150" height="25" border="0" onMouseOver="src='common/backover.png'" onMouseOut="src='common/back.png'"></a></div></td></tr>
</table>
</body>
</center>
</html>
