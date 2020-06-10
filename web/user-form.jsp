<%--
  Created by IntelliJ IDEA.
  User: ntidaking
  Date: 6/10/2020
  Time: 2:43 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>User Form</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/css/materialize.min.css">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/js/materialize.min.js"></script>
</head>
<body>
    <header>
        <nav>
            <div class="nav-wrapper">
                <a href="" class="brand-logo right">User Management App</a>
                <ul>
                    <li><a href="<%=request.getContextPath()%>/list">Users</a></li>
                </ul>
            </div>
        </nav>
    </header>
    <br>
    <div>
        <div class="container row">
            <div class="col s3"></div>
            <div class="col s6">
                <c:if test="${user != null}">
                    <form action="update" method="post">
                </c:if>
                <c:if test="${user == null}">
                    <form action="insert" method="post">
                </c:if>
                <caption>
                    <h2>
                        <c:if test="${user != null}">
                            Edit user
                        </c:if>
                        <c:if test="${user == null}">
                            Add New User
                        </c:if>
                    </h2>
                </caption>
                        <c:if test="${user != null}">
                            <input type="hidden" name="id" value="<c:out value='${user.id}'/>">
                        </c:if>
                        <div class="input-field">
                            <label>User Name</label> <input type="text" value="<c:out value='${user.name}'/>" name="name" required="required">
                        </div>
                        <div class="input-field">
                            <label>User Email</label> <input type="email" value="<c:out value='${user.email}'/>" name="email" required="required">
                        </div>
                        <div class="input-field">
                            <label>User Country</label> <input type="text" value="<c:out value='${user.country}'/>" name="country" required="required">
                        </div>
                        <button type="submit" class="waves-effect waves-#ff1744 red accent-3 btn z-depth-2">Save</button>
                        <form/>
            </div>
        </div>
    </div>
</body>
</html>
