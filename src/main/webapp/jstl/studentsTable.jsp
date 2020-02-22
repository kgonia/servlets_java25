<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="sda" tagdir="/WEB-INF/tags" %>
<%@ page import="org.sda.kurs.model.Student" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.List" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <%@ include file="/common/header.jsp" %>
</head>
<body>

<div class="container">
    <%
        List<Student> students = new ArrayList<>();

        students.add(new Student("Jan", "Kowalski"));
        students.add(new Student("Antoni", "Kowalski"));
        students.add(new Student("Karol", "Kowalski", true));
        pageContext.setAttribute("students", students);
    %>

    <c:forEach items="${students}" var="student">
        <%--${student.name}--%>
        <%--${student.surname}--%>
        <%--<br>--%>
        <sda:custom student="${student}"/>
    </c:forEach>

    <br>

    <table class="table table-striped">
        <thead>
        <tr>
            <th>Imię</th>
            <th>Nazwisko</th>
            <th>Zdał?</th>
        </tr>
        </thead>
        <c:forEach items="${students}" var="student">
            <tr>
                <td>${student.name}</td>
                <td>${fn:toUpperCase(student.surname)}</td>
                <td>
                    <c:choose>
                        <c:when test="${student.promoted}">
                            Super zdał!
                        </c:when>

                        <c:otherwise>
                            Niech płaci za poprawki
                        </c:otherwise>

                    </c:choose>
                </td>
            </tr>
        </c:forEach>

    </table>

</div>
</body>
</html>
