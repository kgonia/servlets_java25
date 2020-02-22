<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

<%
    String language = request.getParameter("favLanguage");

    Cookie cookie = new Cookie("klucz", language);
    cookie.setMaxAge(60*60*24*365); // one year

    response.addCookie(cookie);

    out.print("Wybrałeś język: ");
    out.print("<br>");
    out.print(language);
%>

</body>
</html>
