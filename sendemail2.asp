<%
sch = "http://schemas.microsoft.com/cdo/configuration/" 
set cdoConfig = CreateObject("CDO.Configuration") 
With cdoConfig.Fields 
    .Item(sch & "sendusing") = 2 ' cdoSendUsingPort 
    .Item(sch & "smtpserver") = "192.168.0.100" 
    .update 
End With
	
	set mail = server.createobject("CDO.Message")
	mail.From = "rpalumbo@phychoice.com"
	mail.To = "john.yom@gmail.com"
	'mail.Bcc = "john.yom@gmail.com"
	mail.Subject = "Resume from PhyChoice.com"
	mail.Configuration = cdoConfig
	body = "<b>test</b>"
  	mail.HTMLBody = body
	mail.Send()
'	set mail = nothing
'	set cdoConfig = Nothing


'set m = server.CreateObject("CDONTS.NewMail")
'm.From = "rpalumbo@phychoice.com"
'm.To = "john.yom@gmail.com"
'm.BodyFormat = 0
'm.MailFormat = 0
'm.Subject = "Resume from PhyChoice.com"
'body = "<b>test</b>"
'm.Body = body
'm.Send
'set m = nothing

%>