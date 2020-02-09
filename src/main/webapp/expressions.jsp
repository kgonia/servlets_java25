<%@ page import="java.time.LocalDateTime" %>
<%@ page import="org.sda.kurs.util.JspUtil" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <%@ include file="common/header.jsp" %>
</head>
<body>

<%! private long counter = 0; %>

<%= "Siema" %>
<% out.println("Siema"); %>
<%= LocalDateTime.now() %>
<br>

<%= "Jesteś " + ++counter + " użytkownikiem"%>
<br>

<%= JspUtil.upper("to będzie pisanie dużymi literami")%>

<%@ include file="common/footer.jsp"%>
</body>
</html>
