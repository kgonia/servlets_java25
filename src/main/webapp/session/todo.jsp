<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.List" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

<form action="todo.jsp">
    <input name="item">
    <input type="submit" value="Dodaj">
</form>

<%!
    public static String ITEMS_PARAM_NAME = "items";
%>

<%
    List<String> items = (List<String>) session.getAttribute(ITEMS_PARAM_NAME);

    // tylko za pierwszym razem, gdy w sesji nie ma listy
    if (items == null) {
        items = new ArrayList<>();
        session.setAttribute(ITEMS_PARAM_NAME, items);
    }

    String item = request.getParameter("item");
    if (item != null) {
        items.add(item);
    }

    for (String s : items) {
        out.println(s);
        out.println("<br>");
    }

%>


</body>
</html>
