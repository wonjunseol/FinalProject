<%@ page import="com.book.BookDAO" %>
<%@ page import="com.book.BookVO" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" isELIgnored="false" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>


<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Edit Form</title>
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

        #edit {
            width: 50%;
            margin: 20px auto;
            border-collapse: collapse;
            background-color: #fff;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        #edit td {
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
    </style>
</head>
<body>


<h1>도서 대여 수정폼</h1>
<%--@elvariable id="bookVO" type=""--%>
<form:form action="editok" method="post" modelAttribute="bookVO">
    <form:hidden path="seq"/>
    <table id="edit">
        <tr><td>제목</td><td><form:input path="title"/></td></tr>
        <tr><td>저자</td><td><form:input path="writer"/></td></tr>
        <tr><td>카테고리</td><td><form:input path="category"/></td></tr>
        <tr><td>출판사</td><td><form:input path="publisher"/></td></tr>
        <tr><td>대여여부</td><td><form:input path="rentok"/></td></tr>
        <tr><td>ISBN</td><td><form:input path="isbn"/></td></tr>
    </table>
    <input type="submit" value="수정"/>
    <input type="button" value="취소" onclick="history.back()"/>
</form:form>

</body>
</html>