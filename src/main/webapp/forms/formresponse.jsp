<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

Twój email to:
<%
    out.print(request.getParameter("email"));
%>
<br>
Twoje imie to:
<%= request.getParameter("name")%>
<br>
Twoje nazwisko to:
<%= request.getParameter("surname")%>


</body>
</html>

