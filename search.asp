<!--#include file="connection.asp"-->
<%
searchterm = request.Form("searchterm")

%>

<html>
<head>
  	<meta name="description" content="Physicians Choice Dialysis">
	<meta name="keywords" content="Peritoneal, PD, Home Dialysis, End Stage Renal Disease, 
	Dr. Lopez, Dr. Bheem,Renal, Patient Education,Nephrology,ESRD,Hemodialysis, 
	physician driven, patient focused,kidney disease,dialysis facility, 
	Thomas Karl, renal care, Alabama dialysis facility, Dr. Broder, phychoice,
	 patient care dialysis facility,PCD, Physician partnership, physician choice dialysis,
	  kidney dialysis, hemo dialysis, nephrologists, small business dialysis patient care facility">
	
	<meta name="GENERATOR"
	 content="Mozilla/4.7 [en] (WinNT; I) [Netscape]">	

<meta name="Author" content="Goddess Design">


 
	<title>Physicians Choice Dialysis</title>
	<LINK REL=StyleSheet HREF="css/global.css" TYPE="text/css" MEDIA=screen>
	<LINK REL=StyleSheet HREF="css/news.css" TYPE="text/css" MEDIA=screen>
	<script type="text/javascript" src="js/swfobject.js"></script>
</head>

<body>

<div id="container">


<div class="header"><!--#include file="header.html"--></div>

<div id="content">
	

<div id="bgimage" style="height: 500px;">
<div class="page_title" style="position:absolute; top:20px; left:720px;"><font style="font-family:times new roman; font-size:18pt; color:white;">SEARCH RESULTS</font></div>

<div class="page_body"> <!-- RELATIVE POSITIONED-->


<div class="sidenav"><!--#include file="sidenav.html"--></div> <!-- FLOATED LEFT-->

<div class="main_content"><!-- FLOATED LEFT-->
<div class="subtitle"><br><br><br><br></div>
<div class="information">
<table width="580" colspan="3" border=0>	
	<tr>
		<td valign="top" width="350" colspan="1">
			
			<span>Search Results for: <%=searchterm%></span>
		
			<BR><BR>
		
<div style="position:relative; top:0px; left:0px; border:1px solid #eeeeee; padding:10px; width:600px; height:350px; overflow-y:auto;">
<%
sql = "SELECT * FROM Page WHERE Content like '%" & searchterm & "%' or Title like '%" & searchterm & "%'"
set rs = conn.execute(sql)

while not rs.eof
    URL = rs("URL")
    title = rs("Title")
    content = rs("Content")
   
	response.Write "<a href='" & URL & "' style='font-family:times new roman; text-decoration:underline; font-size:14pt; color:#015D90;'>" & title & "</a><BR>"
	Response.Write "<font style='font-family:times new roman; font-size:10pt; color:#707070;;'>" & content & "</font><BR><BR>"
	
    rs.movenext
wend
%>
</div>
		
		
		</td>
	</tr>
</table>
	
</div>
</div>	<!-- END MAIN CONTENT-->


</div> <!-- END PAGE BODY- no bg image - container-->

</div>  <!-- CONTENT with BG IMAGE-->





<div class="footer"><!--#include file="footer.html"--></div>


</div><!-- CONTAINER-->
</body>
</html>
<%


set rs = nothing
set conn = nothing

%>
