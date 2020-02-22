<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <%@ include file="common/header.jsp" %>
</head>
<body>

<c:set var="theLocale" value="${not empty param.locale ? param.locale : 'pl_PL'}" scope="session" />

<fmt:setLocale value="${theLocale}" />

<fmt:setBundle basename="translations"/>

<h2>
    <fmt:message key="greetings" />
</h2>

<a href="index.jsp?locale=pl_PL">
    <button>
        Polski
    </button>
</a>
<a href="index.jsp?locale=en_US">
    <button>
        Angielski
    </button>
</a>

<div class="container">
    <!-- Content here -->

    <div class="alert alert-primary" role="alert">
        <fmt:message key="alert" />
    </div>

    <form>
        <div class="form-group">
            <label for="exampleInputEmail1">Email address</label>
            <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
            <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
        </div>
        <div class="form-group">
            <label for="exampleInputPassword1">Password</label>
            <input type="password" class="form-control" id="exampleInputPassword1">
        </div>
        <div class="form-group form-check">
            <input type="checkbox" class="form-check-input" id="exampleCheck1">
            <label class="form-check-label" for="exampleCheck1">Check me out</label>
        </div>
        <button type="submit" class="btn btn-primary">Submit</button>
    </form>

    <button type="button" class="btn btn-primary">Primary</button>

</div>

<%@ include file="common/footer.jsp"%>
</body>
</html>
