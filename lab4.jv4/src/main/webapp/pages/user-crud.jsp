<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>User CRUD</title>
    <style>
        /* Thêm CSS đơn giản để giống giao diện mẫu */
        body { font-family: sans-serif; }
        form {
            border: 1px solid #ccc;
            padding: 10px;
            width: 600px;
            display: grid;
            grid-template-columns: 1fr 1fr;
            gap: 10px;
        }
        form div { display: flex; flex-direction: column; }
        form label { margin-bottom: 5px; font-weight: bold; }
        form input[type=text], form input[type=password] {
            padding: 5px;
            border: 1px solid orange;
            width: 90%;
        }
        form .form-actions {
            grid-column: 1 / -1; /* Nút bấm chiếm cả 2 cột */
        }
        form button { padding: 8px 12px; }
        table {
            width: 620px;
            border-collapse: collapse;
            margin-top: 10px;
        }
        th, td { border: 1px solid #ccc; padding: 8px; }
        th { background-color: #007bff; color: white; }
        tr:nth-child(even) { background-color: #f2f2f2; }
        i { color: red; }
    </style>
</head>
<body>
    <i>${message}</i>
    <c:url var="url" value="/user/crud" />

    <form method="post">
        <div>
            <label>Id:</label>
            <input name="id" value="${user.id}">
        </div>
        <div>
            <label>Password:</label>
            <input name="password" type="password" value="${user.password}">
        </div>
        <div>
            <label>Fullname:</label>
            <input name="fullname" value="${user.fullname}">
        </div>
        <div>
            <label>Email Address:</label>
            <input name="email" value="${user.email}">
        </div>
        <div>
            <label>Role:</label>
            <div>
                <input name="admin" type="radio" value="true" ${user.admin ? 'checked' : ''}> Admin
                <input name="admin" type="radio" value="false" ${!user.admin ? 'checked' : ''}> User
            </div>
        </div>
        <div></div> <div class="form-actions">
            <hr>
            <button formaction="${url}/create">Create</button>
            <button formaction="${url}/update">Update</button>
            <button formaction="${url}/delete">Delete</button>
            <button formaction="${url}/reset">Reset</button>
        </div>
    </form>

    <hr>

    <table>
        <thead>
            <tr>
                <th>Id</th>
                <th>Fullname</th>
                <th>Email</th>
                <th>Role</th>
                <th>Edit</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach var="u" items="${users}">
                <tr>
                    <td>${u.id}</td>
                    <td>${u.fullname}</td>
                    <td>${u.email}</td>
                    <td>${u.admin ? 'Admin' : 'User'}</td>
                    <td><a href="${url}/edit/${u.id}">Edit</a></td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
</body>
</html>