<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create new customer</title>
    <style>
        .message {
            color: green;
        }

        .div {
            width: 300px;
            height: 300px;
            margin-left: 20px;
            border: darkslateblue 2px solid;
            text-align: center;
        }
    </style>
</head>
<body>
<div class="div">
    <h1>Create new customer</h1>
    <p>
        <c:if test='${requestScope["message"] != null}'>
            <span class="message">${requestScope["message"]}</span>
        </c:if>
    </p>
    <p>
        <a href="customers">Back to customer list</a>
    </p>
    <form method="post">
        <strong>Customer information</strong>
        <table>
            <tr>
                <td>Name:</td>
                <td><input type="text" name="name"></td>
            </tr>
            <tr>
                <td>Email:</td>
                <td><input type="text" name="email"></td>
            </tr>
            <tr>
                <td>Address:</td>
                <td><input type="text" name="address"></td>
            </tr>
            <tr>
                <td></td>
                <td><input type="submit" value="Create customer" style="background: greenyellow"></td>
            </tr>
        </table>
    </form>
</div>
</body>
</html>
