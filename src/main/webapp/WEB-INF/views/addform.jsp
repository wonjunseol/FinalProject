<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 11/17/2023
  Time: 10:59 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Insert title here</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f5f5f5;
            text-align: center;
            height: 100vh;
            margin: 0;
        }

        h1 {
            color: #333;
        }

        table {
            width: 50%;
            margin: 20px auto;
            border-collapse: collapse;
            background-color: #fff;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        table td {
            padding: 10px;
            border-bottom: 1px solid #ddd;
        }

        input[type="text"], input[type="submit"], input[type="button"] {
            padding: 10px;
            margin: 5px 0;
            border: 1px solid #ddd;
            border-radius: 3px;
            box-sizing: border-box;
        }

        input[type="submit"] {
            background-color: #4caf50;
            color: #fff;
            cursor: pointer;
        }

        input[type="button"] {
            background-color: #808080;
            color: #fff;
            cursor: pointer;
        }

        button {
            padding: 10px;
            background-color: #808080;
            color: #fff;
            cursor: pointer;
            border: none;
            border-radius: 3px;
            margin-right: 10px;
        }

        button:hover {
            background-color: #555;
        }
    </style>
</head>
<body>

<h1>Add New Post</h1>
<form action="addok" method="post">
    <table>
        <tr><td>제목:</td><td><input type="text" name="title"/></td></tr>
        <tr><td>저자:</td><td><input type="text" name="writer"/></td></tr>
        <tr><td>카테고리:</td><td><input type="text" name="category"/></td></tr>
        <tr><td>출판사:</td><td><input type="text" name="publisher"/></td></tr>
        <tr><td>대여여부:</td><td><input type="text" name="rentok"/></td></tr>
        <tr><td>ISBN:</td><td><input type="text" name="isbn"/></td></tr>
    </table>
    <button type="button" onclick="location.href='list'">목록보기</button>
    <button type="submit">등록하기</button>

</form>

</body>
</html>
