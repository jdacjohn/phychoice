<%
sch = "http://schemas.microsoft.com/cdo/configuration/" 
set cdoConfig = CreateObject("CDO.Configuration") 
With cdoConfig.Fields 
    .Item(sch & "sendusing") = 2 ' cdoSendUsingPort 
    .Item(sch & "smtpserver") = "192.168.0.1" 
    .update 
End With
	

jobtitle = request.form("jobtitle")
jobresume = Request.Form("jobresume")
	
	
	set mail = server.createobject("CDO.Message")
	mail.From = "rpalumbo@phychoice.com"
	mail.To = "john.yom@gmail.com"
	'mail.Bcc = "john.yom@gmail.com"
	mail.Subject = "Resume from PhyChoice.com"
	mail.Configuration = cdoConfig
	
	body = "<b>Job Title:</b>" & jobtitle & "<BR>"
	body = "<b>Resume:</b><BR>" & jobresume & "<BR><BR>"
  	mail.HTMLBody = body
	
	mail.Send()
	
	set mail = nothing
	set cdoConfig = Nothing

%>