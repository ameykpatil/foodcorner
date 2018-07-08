<html>
	<head>
    	<title>Home</title>
		<link rel="stylesheet" type="text/css" href="css/foodcorner.css" />
        <script language="javascript">
		<!--

   function preventBack()
   {
	   window.history.forward();
   }
    setTimeout("preventBack()", 0);
    window.onunload=function(){null};
		--></script>
    <style type="text/css">
<!--
#apDiv1 {
	position:absolute;
	width:860px;
	height:484px;
	z-index:1;
	left: 74px;
	top: 152px;
}
-->
    </style>
	</head>
  <center>
		<body>
			<img src="images/header.png" width="560" height="75">
        	<table width="750" border="5" cellpadding="0" cellspacing="0">
        		<tr>
                	<td align="center" bgcolor="#000000"><a href="home.asp" target="_parent"><font color="#FF0000">HOMEPAGE</font></a></td>
					<td align="center" bgcolor="#000000"><a href="mytray.asp" target="_parent">MY TRAY</a></td>
                 	<td align="center" bgcolor="#000000"><a href="myacc.asp" target="_parent">MY ACCOUNT</a></td>
                   	<td align="center" bgcolor="#000000"><a href="aboutus.html" target="_parent">ABOUT US</a></td>
                   	<td align="center" bgcolor="#000000"><a href="logout.asp" target="_parent">LOGOUT</a></td>
                </tr>
        	</table>
    		<br />
            
            
            <br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br />
            
            
            
            
            
            
            <div id="apDiv1">
              <iframe width="1000" height="500"></iframe>
            </div>
            
            
            <br><br><br><br><br><br><br><br><br><br><br><br>
            
MOST POPULAR PRODUCTS
<%
										SET MyConn=Server.CreateObject("ADODB.Connection")
													MyConn.Provider="Microsoft.Jet.OLEDB.4.0"
			MyConn.Open "C:\Inetpub\wwwroot\foodcorner\db\food.mdb"
										SET RS=MyConn.EXECUTE("select * from fooditems where rating>=3.5 order by rating desc")
									%>
                                 	<h1>!!! FIND OUT WHATS HOT !!!</h1>
									<table border="5" cellpadding="0" cellspacing="0">
										<% 
											i=0 
										   	WHILE i<=10 
										%>
										<tr>
											<% FOR j=0 TO 3 %>
											<td><a href="product.asp?pid=<% Response.Write(RS(0)) %>"><img src="images/big/<%=RS("image")%>" border="0"></a></td>
											<%
												i=i+1
												RS.Movenext
												NEXT
											%>
                                            <%
												WEND
												RS.Close
												MyConn.Close
											%>
										</tr>
									</table>      
                               MC DONALDS
                                	<%
										start=1
                                    	finish=15
										SET MyConn=Server.CreateObject("ADODB.Connection")
													MyConn.Provider="Microsoft.Jet.OLEDB.4.0"
			MyConn.Open "C:\Inetpub\wwwroot\foodcorner\db\food.mdb"
										SET RS=MyConn.EXECUTE("select * from fooditems where id >=" & 1 & "and id<=" & 15)
										i=0
										DO WHILE ((start<=finish) AND RS.EOF=FALSE)
											i=i+1
											IF start=1 THEN Response.Write("<table border='5' cellspacing='0' cellpadding='0'><tr>") END IF 
									%>
                                    <td><a href="product.asp?pid=<%Response.Write(RS(0))%>"><img src="images/big/<%Response.Write(RS(3))%>" border="0" width="130" height="130"></a></td>
                                    <%
										RS.Movenext
										IF (i=5 or start=15 or start=33 or start=53) THEN
											Response.write("</tr><tr>")
											i=0
										END IF
										start=start+1
										LOOP
									%>
                                    </table>
<%
										RS.Close
										MyConn.Close
									%>
       							KENTUCKY FRIED CHICKEN
                                	<%
										start=16
                                    	finish=33
										SET MyConn=Server.CreateObject("ADODB.Connection")
													MyConn.Provider="Microsoft.Jet.OLEDB.4.0"
			MyConn.Open "C:\Inetpub\wwwroot\foodcorner\db\food.mdb"
										SET RS=MyConn.EXECUTE("select * from fooditems where id >=" & 16 & "and id<=" & 33)
										i=0
										DO WHILE ((start<=finish) AND RS.EOF=FALSE)
											i=i+1
											IF start=16 THEN Response.Write("<table border='5' cellspacing='0' cellpadding='0'><tr>") END IF 
									%>
                                    <td><a href="product.asp?pid=<%Response.Write(RS(0))%>"><img src="images/big/<%Response.Write(RS(3))%>" border="0" width="130" height="130"></a></td>
                                    <%
										RS.Movenext
										IF (i=5 or start=15 or start=33 or start=53) THEN
											Response.write("</tr><tr>")
											i=0
										END IF
										start=start+1
										LOOP
									%>
                                    </table>
                                    <%
										RS.Close
										MyConn.Close
									%>
                            							BASKIN ROBBINS
                                	<%
										start=54
                                    	finish=71
										SET MyConn=Server.CreateObject("ADODB.Connection")
										MyConn.Provider="Microsoft.Jet.OLEDB.4.0"
										MyConn.Open "C:\Inetpub\wwwroot\foodcorner\db\food.mdb"
										SET RS=MyConn.EXECUTE("select * from fooditems where id >=" & 54 & "and id<=" & 71)
										i=0
										DO WHILE ((start<=finish) AND RS.EOF=FALSE)
											i=i+1
											IF start=54 THEN Response.Write("<table border='5' cellspacing='0' cellpadding='0'><tr>") END IF 
									%>
                                    <td><a href="product.asp?pid=<%Response.Write(RS(0))%>"><img src="images/big/<%Response.Write(RS(3))%>" border="0" width="130" height="130"></a></td>
                                    <%
										RS.Movenext
										IF (i=5 or start=15 or start=33 or start=53) THEN
											Response.write("</tr><tr>")
											i=0
										END IF
										start=start+1
										LOOP
									%>
                                    </table>
                                    <%
										RS.Close
										MyConn.Close
									%>
                            	DOMINOS PIZZA
                                	
                                	<%
										start=34
                                    	finish=53
										SET MyConn=Server.CreateObject("ADODB.Connection")
													MyConn.Provider="Microsoft.Jet.OLEDB.4.0"
			MyConn.Open "C:\Inetpub\wwwroot\foodcorner\db\food.mdb"
										SET RS=MyConn.EXECUTE("select * from fooditems where id >=" & 34 & "and id<=" & 53)
										i=0
										DO WHILE ((start<=finish) AND RS.EOF=FALSE)
											i=i+1
											IF start=34 THEN Response.Write("<table border='5' cellspacing='0' cellpadding='0'><tr>") END IF 
									%>
                                    <td><a href="product.asp?pid=<%Response.Write(RS(0))%>"><img src="images/big/<%Response.Write(RS(3))%>" border="0" width="130" height="128"></a></td>
                                    <%
										RS.Movenext
										IF (i=5 or start=15 or start=33 or start=53) THEN
											Response.write("</tr><tr>")
											i=0
										END IF
										start=start+1
										LOOP
									%>
                                    </table>
<%
										RS.Close
										MyConn.Close
									%>
                               
                               	  		<object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=9,0,28,0" width="980" height="620">
                                	  		<param name="movie" value="images/mc.swf">
                                            <param name="quality" value="high">
                                            <param name="wmode" value="opaque">
                                            <embed src="images/mc.swf" quality="high" wmode="opaque" pluginspage="http://www.adobe.com/shockwave/download/download.cgi?P1_Prod_Version=ShockwaveFlash" type="application/x-shockwave-flash" width="730" height="530"></embed>
                              	  		</object>
          							
                               	  		<object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=9,0,28,0" width="710" height="356">
                               	  		  <param name="movie" value="images/m6_fillupbox.swf">
                               	  		  <param name="quality" value="high">
                               	  		  <param name="wmode" value="opaque">
                               	  		  <embed src="images/m6_fillupbox.swf" quality="high" wmode="opaque" pluginspage="http://www.adobe.com/shockwave/download/download.cgi?P1_Prod_Version=ShockwaveFlash" type="application/x-shockwave-flash" width="730" height="530"></embed>
                       	  		    </object>
                             
                 
                               	  	<object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=9,0,28,0" width="758" height="530">
                               	  	  <param name="movie" value="images/Home_mov_revised2.swf">
                               	  	  <param name="quality" value="high">
                               	  	  <param name="wmode" value="opaque">
                               	  	  <embed src="images/Home_mov_revised2.swf" quality="high" wmode="opaque" pluginspage="http://www.adobe.com/shockwave/download/download.cgi?P1_Prod_Version=ShockwaveFlash" type="application/x-shockwave-flash" width="730" height="530"></embed>
                           	  	    </object>
                                 
                               	  	<object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=9,0,28,0" width="1003" height="530">
                               	  	  <param name="movie" value="images/Cakes09_home_animation.swf">
                               	  	  <param name="quality" value="high">
                               	  	  <param name="wmode" value="opaque">
                               	  	  <embed src="images/Cakes09_home_animation.swf" quality="high" wmode="opaque" pluginspage="http://www.adobe.com/shockwave/download/download.cgi?P1_Prod_Version=ShockwaveFlash" type="application/x-shockwave-flash" width="730" height="530"></embed>
                           	  	    </object>
       							
                               	 	<object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=9,0,28,0" width="980" height="620">
                               	 	  <param name="movie" value="images/index.swf">
                               	 	  <param name="quality" value="high">
                               	 	  <param name="wmode" value="opaque">
                               	 	  <embed src="images/index.swf" quality="high" wmode="opaque" pluginspage="http://www.adobe.com/shockwave/download/download.cgi?P1_Prod_Version=ShockwaveFlash" type="application/x-shockwave-flash" width="730" height="530"></embed>
                           	 	    </object>
       							
                               	  		
		</body>
	</center>
</html>
