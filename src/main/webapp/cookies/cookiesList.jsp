<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

<%
    Cookie[] cookies = request.getCookies();

    for(Cookie cookie: cookies){
        out.println(cookie.getName());
        out.println(cookie.getValue());
        out.println("<br>");
    }

%>

</body>
</html>
