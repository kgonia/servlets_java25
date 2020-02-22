<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <%@ include file="/common/header.jsp"%>
</head>
<body>

<div class="container" style="margin-top: 20px">
    <form action="/forms/formresponse.jsp">
        <div class="form-group">
            <label for="exampleInputEmail1">Email address</label>
            <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp"
                   placeholder="Enter email" name="email">
            <small id="emailHelp" class="form-text text-muted">Nigdy nie udostepnimy Twojego e-maila</small>
        </div>
        <div class="form-group">
            <label for="imie">Imie</label>
            <input type="text" class="form-control" name="name" id="imie" placeholder="Imie">
        </div>
        <div class="form-group">
            <label for="nazwisko">Nazwisko</label>
            <input type="text" class="form-control" name="surname" id="nazwisko" placeholder="Nazwisko">
        </div>
        <button type="submit" class="btn btn-primary">Submit</button>
    </form>
</div>

<%@ include file="/common/footer.jsp"%>
</body>
</html>
