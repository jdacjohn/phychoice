<%
searchterm = request.Form("searchterm")

response.Write "search term: " & searchterm

set conn = server.createobject("ADODB.Connection")
conn.Open "driver={MySQL ODBC 5.1 driver};server=192.168.0.1;uid=websearch;pwd=yourchoice;database=phychoice;"

sql = "SELECT * FROM Page"
set rs = conn.execute(sql)

while not rs.eof
    URL = rs("URL")
    response.Write URL & "<BR>"
    rs.movenext
wend

set rs = nothing
set conn = nothing


%>