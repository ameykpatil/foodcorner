<%@LANGUAGE="VBSCRIPT"%>
<html>
	<head>
    	<title>FOODCORNER - Product Description</title>
		<link rel="stylesheet" type="text/css" href="css/foodcorner.css" />
		<link href="css/SpryTabbedPanels.css" rel="stylesheet" type="text/css" />
		<link href="css/SpryAccordion.css" rel="stylesheet" type="text/css" />
        <script src="SpryTabbedPanels.js" type="text/javascript"></script>
		<script src="SpryAccordion.js" type="text/javascript"></script>
	</head>
    <center>
	<body>
    	<img src="images/header.png">
        	<table width="750" border="5" cellpadding="0" cellspacing="0">
        		<tr>
                	<td align="center" bgcolor="#000000"><a href="home.asp" target="_parent">HOMEPAGE</a></td>
					<td align="center" bgcolor="#000000"><a href="mytray.asp" target="_parent">MY TRAY</a></td>
                 	<td align="center" bgcolor="#000000"><a href="myacc.asp" target="_parent">MY ACCOUNT</a></td>
                   	<td align="center" bgcolor="#000000"><a href="aboutus.asp" target="_parent">ABOUT US</a></td>
                   	<td align="center" bgcolor="#000000"><a href="logout.asp" target="_parent">LOGOUT</a></td>
                </tr>
        	</table>
    		<br />
			<div id="TabbedPanels1" class="TabbedPanels" align="center">
  				<ul class="TabbedPanelsTabGroup">
    				<li class="TabbedPanelsTab" tabindex="0">GET CLOSER</li>
  				</ul>
  				<div class="TabbedPanelsContentGroup">
    				<div class="TabbedPanelsContent">
      					<div id="Accordion1" class="Accordion" tabindex="0">
        					<div class="AccordionPanel">
          						<div class="AccordionPanelTab" align="center">PRODUCT DESCRIPTION</div>
       					      	<div class="AccordionPanelContent" align="center">
							    	<%Dim objConn,DSN,sql,oRs,cook,trans,pid,quant,total
set objConn=Server.CreateObject("ADODB.Connection")
objConn.Provider="Microsoft.Jet.OLEDB.4.0"
			objConn.Open "C:\Inetpub\wwwroot\foodcorner\db\food.mdb"
cook=Session("Username")
trans=Session("Trans")
pid=request.QueryString("pid")
sql="select * from tray where username='" & cook & "' and pid='" & pid & "'"
set oRs=objConn.execute(sql)
if oRs.eof then
sql="insert into tray(trans,pid,quantity,username)"
sql=sql & "values('"& trans & "','"& pid & "','" & 1 & "','" & cook & "')"
objConn.execute(sql)
else
quant=oRs(3)+1
sql="update tray set quantity=" & quant & " where pid='" & pid & "'"
objConn.execute(sql)
end if
if pid>=1 and pid<=15 then
start=0
last=14
end if
if pid>=16 and pid<=33 then
start=15
last=32
end if
if pid>=34 and pid<=53 then
start=33
last=52
end if
if pid>=54 and pid<=73 then
start=53
last=72
end if
sql="select item,totbuy from fooditems where ID=" & pid
set oRs=objConn.execute(sql)
total=oRs(1)+1
objConn.execute("update fooditems set totbuy=" & total & " where ID=" & pid)
response.write("<br><br><br><br>" & oRs(0) & " <br><br>ADDED TO YOUR TRAY SUCCESSFULLY")
oRs.close
objConn.close
response.AddHeader "Refresh", "1;URL=javascript:history.go(-1)"
%>
                                </div>
        					</div>
                        </div>
                    </div>
                </div>
            </div>
			<script type="text/javascript">
			<!--
				var TabbedPanels1 = new Spry.Widget.TabbedPanels("TabbedPanels1");
				var Accordion1 = new Spry.Widget.Accordion("Accordion1");
			//-->
			</script>       
		</body>
	</center>
</html>
