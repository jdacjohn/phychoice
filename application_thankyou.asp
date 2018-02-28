<%
sch = "http://schemas.microsoft.com/cdo/configuration/" 
set cdoConfig = CreateObject("CDO.Configuration") 
With cdoConfig.Fields 
		.Item(sch & "sendusing") = 2
		.Item(sch & "smtpserver") = "east.exch028.serverdata.net"
		.Item(sch & "smtpserverport") = 25
		.Item(sch & "smtpauthenticate") = 1
		.Item(sch & "sendusername") = "information@phychoice.com"
		.Item(sch & "sendpassword") = "Phych0ice2013"
		.Item(sch & "smtpusessl") = true
    .update 
End With
	

jobtitle = request.form("jobtitle")
jobresume = Request.Form("jobresume")
	
	
	set mail = server.createobject("CDO.Message")
	mail.From = "information@phychoice.com"
	
	'When ready, change this to "rpalumbo@phychoice.com"
	mail.To = "information@phychoice.com"   
	mail.Bcc = "steph@goddessdesignonline.com;kirsten@goddessdesignonline.com;john@jdacsolutions.com"
	
	mail.Subject = "Resume from PhyChoice.com"
	mail.Configuration = cdoConfig
	
	body = "<b>Job Title:</b> " & jobtitle & "<BR><BR>"
	body = body & "<b>Resume:</b><BR>" & replace(jobresume, chr(13), "<BR>") & "<BR><BR>"
  	mail.HTMLBody = body
	
	mail.Send()
	
	set mail = nothing
	set cdoConfig = Nothing
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
<div class="page_title" style="position:relative; left:750px;"><img src="images/application.gif" width="155" height="16" alt="Application"></div>

<div class="page_body"> <!-- RELATIVE POSITIONED-->


<div class="sidenav"><!--#include file="sidenav.html"--></div> <!-- FLOATED LEFT-->

<div class="main_content"><!-- FLOATED LEFT-->
<div class="subtitle"><br><br><br><br><img src="images/careers_subtitle.jpg" width="42" height="180" alt="Careers"></div>
<div class="information">
<table width="680" colspan="3">
<tr><td valign="top" width="350" colspan="1">
	
	<p style=" width: 350px;text-align:justify">	
	<span style="font-size:14px;">	Thank you for your application submission.  Please allow a few days for 
		your resume to be reviewed. A member of our staff will be in touch with
		you shortly.</span></p>


</td>
<td valign="top" align="left" colspan="1" width="50"></td>
<td valign="top" align="left" colspan="1" width="255">

<!--<img src="images/sidebar_service.gif" width="254" height="32" alt="Sidebar News" alt="Service">

<div class="sidebar"><table>

<tr><td valign="top"><img src="images/bullets.gif" width="12" height="13" alt="Bullets"></td>
<td><a href="http://get.adobe.com/reader/" target="_blank">Download Acrobat Reader</a></td></tr>


</table></div>

<br><br>-->
<img src="images/sidebar_links.gif" width="254" height="32" alt="Related Links">

<div class="sidebar"><table>
<tr><td valign="top"><img src="images/bullets.gif" width="12" height="13" alt="Bullets"></td>
<td><a href="benefits.asp">Benefits</a></td></tr>
<tr><td valign="top"><img src="images/bullets.gif" width="12" height="13" alt="Bullets"></td>
<td><a href="job_opportunities.asp">Job Opportunities</a></td></tr>
<tr><td valign="top"><img src="images/bullets.gif" width="12" height="13" alt="Bullets"></td>
<td><a href="opportunities.asp">Overview</a></td></tr>

</table></div>
</td>


</tr>
<tr>
<td valign="top" colspan="3"></td>

</tr>



</table>

</div>
</div> <!-- END MAIN CONTENT-->


</div> <!-- END PAGE BODY- no bg image - container-->

</div> <!-- CONTENT with BG IMAGE-->





<div class="footer"><!--#include file="footer.html"--></div>


</div><!-- CONTAINER-->
</body>
</html>
