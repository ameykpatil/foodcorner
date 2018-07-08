<%@LANGUAGE="VBSCRIPT"%>
<html>
	<head>
    	<title>Product Description</title>
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
                	<td align="center" bgcolor="#000000"><a href="home.asp" target="_parent"><font color="#FF0000">HOMEPAGE</font></a></td>
					<td align="center" bgcolor="#000000"><a href="mytray.asp" target="_parent">MY TRAY</a></td>
                 	<td align="center" bgcolor="#000000"><a href="myacc.asp" target="_parent">MY ACCOUNT</a></td>
                   	<td align="center" bgcolor="#000000"><a href="aboutus.asp" target="_parent">ABOUT US</a></td>
                   	<td align="center" bgcolor="#000000"><a href="logout.asp" target="_parent">LOGOUT</a></td>
                </tr>
        	</table>
    		<br />
			<div id="TabbedPanels1" class="TabbedPanels" align="center">
<div class="TabbedPanelsContentGroup">
<div class="TabbedPanelsContent">
      					<div id="Accordion1" class="Accordion" tabindex="0">
        					<div class="AccordionPanel">
          						<div class="AccordionPanelTab" align="center"></div>
       					      <div class="AccordionPanelContent" align="center">
        					      <%
										DIM pid
										pid=Request.QueryString("pid")
										SET MyConn=Server.CreateObject("ADODB.Connection")
										MyConn.Provider="Microsoft.Jet.OLEDB.4.0"
			MyConn.Open "C:\Inetpub\wwwroot\foodcorner\db\food.mdb"
										SET RS=MyConn.EXECUTE("select * from fooditems where ID=" & pid)
								  %>
        					      <br>
        					      <br>
        					      <br>
        					      <table width="523" border="0" cellpadding="0" cellspacing="0" height="100">
        					        <tr>
        					          <td width="182" rowspan="6" align="center" height="200"><img src="images/ebig/<%Response.Write(RS(3))%>" width="200" height="200"></td>
        					          <td width="523" align="center"><font face="Trebuchet MS, Arial, Helvetica, sans-serif" size="+1"><%=RS(1)%></font></td>
      					          </tr>
        					        <tr>
        					          <td align="center"><img src="images<%Response.Write(RS(4))%>"></td>
      					          </tr>
        					        <tr>
        					          <td align="center"><img src="images/<%Response.Write(RS(5))%>.png"></td>
      					          </tr>
        					        <tr>
        					          <td align="center"><b><font size="+2">Rs. <%=RS(2)%></font></b></td>
      					          </tr>
        					        <tr>
        					          <td align="center"><table width="135" height="30" border="5" cellpadding="0" cellspacing="0">
        					            <tr>
        					              <td align="center" bgcolor="#000000"><a href="add.asp?pid=<%Response.Write(pid)%>">ADD TO TRAY</a></td>
      					              </tr>
      					            </table></td>
      					          </tr>
        					        <tr>
        					          <td align="center">&nbsp;</td>
      					          </tr>
        					        <tr>
        					          <td colspan="2"><b><i><%=RS("descrip")%></i></b></td>
      					          </tr>
      					        </table>
       					        <br>
        					      <br>
        					      <table width="140" height="30" border="5" cellpadding="0" cellspacing="0">
        					        <tr>
        					          <td align="center" bgcolor="#000000"><a href="javascript:history.back()">BACK</a></td>
      					          </tr>
      					        </table>
        					      	<%
										RS.Close
										MyConn.Close
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
