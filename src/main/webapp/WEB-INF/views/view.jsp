<%@ page import="com.book.BookDAO" %>
<%@ page import="com.book.BookVO" %><%--
  Created by IntelliJ IDEA.
  User: user
  Date: 12/2/2023
  Time: 10:02 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false"%>
<html>
<head>
    <title>Title</title>
    <style>
        body {
            font-family: 'Arial', sans-serif;
            margin: 20px;
            text-align: center;
        }

        .board_wrap {
            width: 70%;
            margin: auto;
        }

        .board_top {
            text-align: center;
            background-color: #4caf50;
            color: white;
            padding: 10px;
        }

        .board_view_wrap {
            margin-top: 20px;
            border: 1px solid #ddd;
            padding: 20px;
            background-color: #f9f9f9;
        }

        .board_view {
            border: 1px solid #ddd;
            padding: 15px;
            margin-bottom: 20px;
        }

        .board_view p {
            margin: 0;
            padding: 5px;
        }

        button {
            text-decoration: none;
            padding: 10px 20px;
            background-color: #64bb67;
            color: #fff;
            border-radius: 5px;
            cursor: pointer;
        }

        button:hover {
            background-color: #3d8b40;
        }
    </style>
</head>
<body>
<div class="board_wrap">
    <div class="board_top">
        <h1>도서대여 세부내용</h1>
    </div>

    <div class="board_view_wrap">
        <div class="board_view">
            <p>No: ${selectedPost.seq}</p>
            <p>제목: ${selectedPost.title}</p>
            <p>저자: ${selectedPost.writer}</p>
            <p>카테고리: ${selectedPost.category}</p>
            <p>출판사: ${selectedPost.publisher}</p>
            <p>대여여부: ${selectedPost.rentok}</p>
        </div>
    </div>

    <button type="button" onclick="location.href='../list'">목록보기</button>

</div>

</body>
</html>
