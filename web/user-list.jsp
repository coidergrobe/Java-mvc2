<%--
  Created by IntelliJ IDEA.
  User: ntidaking
  Date: 6/10/2020
  Time: 2:33 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>User List</title>
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
    <div>
        <h3 class="center-align">List of Users</h3>
        <div>
            <a href="<%=request.getContextPath()%>/new" class="waves-effect waves-#ff1744 red accent-3 btn z-depth-2">Add New User</a>
        </div>
        <table class="responsive-table">
            <thead>
                <tr>
                    <th>ID</th>
                    <th>Name</th>
                    <th>Email</th>
                    <th>Country</th>
                    <th>Action</th>
                </tr>
            </thead>
            <tbody>
            <c:forEach var="user" items="${listUser}">
                <tr>
                    <td>
                        <c:out value="${user.id}"/>
                    </td>
                    <td>
                        <c:out value="${user.name}"/>
                    </td>
                    <td>
                        <c:out value="${user.email}"/>
                    </td>
                    <td>
                        <c:out value="${user.country}"/>
                    </td>
                    <td>
                        <a href="edit?id=<c:out value='${user.id}'/> " class="waves-effect waves-#ff1744 red accent-3 btn z-depth-2">Edit</a>
                        <a href="delete?id=<c:out value='${user.id}'/> " class="waves-effect waves-#ff1744 red accent-3 btn z-depth-2">Delete</a>
                    </td>
                </tr>
            </c:forEach>
            </tbody>
        </table>
    </div>
</div>
</body>
</html>
