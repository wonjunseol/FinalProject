<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 12/2/2023
  Time: 12:06 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css">
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>Title</title>
    <style>
        body{
            text-align: center;
        }
        h1{
            padding: 10px;
            text-align: center;
        }
        #list {
            font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
            border-collapse: collapse;
            width: 100%;
        }
        #list td, #list th {
            border: 1px solid #ddd;
            padding: 8px;
            text-align:center;
        }
        #list tr:nth-child(even){background-color: #f2f2f2;}
        #list tr:hover {background-color: #ddd;}
        #list th {
            padding-top: 12px;
            padding-bottom: 12px;
            text-align: center;
            background-color: #4caf50;
            color: white;
        }
        .fa-trash{
            font-size: 20px;
        }
        .fa-pen-to-square{
            font-size: 20px;
        }
        a {
            color: black;
            text-decoration: none;
        }
        #add {
            text-decoration: none;
            padding: 10px 20px;
            background-color: #4caf50;
            color: #fff;
            border-radius: 5px;
        }
    </style>
    <title>Title</title>
</head>
<body>
    <img src="./img/img.png" width="300"/>
    <h1>도서 대여 서비스</h1>
    <table id="list">
        <tr>
            <th>No</th>
            <th>제목</th>
            <th>저자</th>
            <th>종류</th>
            <th>출판사</th>
            <th>대여여부</th>
            <th>isbn</th>
            <th>대여날짜</th>
            <th>반납날짜</th>
            <th>수정</th>
            <th>삭제</th>
        </tr>
        <c:forEach items="${list}" var="u">
            <tr>
                <td><a href="view/${u.seq}">${u.seq}</a></td>
                <td><a href="view/${u.seq}">${u.title}</a></td>
                <td><a href="view/${u.seq}">${u.writer}</a></td>
                <td><a href="view/${u.seq}">${u.category}</a></td>
                <td><a href="view/${u.seq}">${u.publisher}</a></td>
                <td><a href="view/${u.seq}">${u.rentok}</a></td>
                <td><a href="view/${u.seq}">${u.isbn}</a></td>
                <td><a href="view/${u.seq}">${u.regdate}</a></td>
                <td><a href="view/${u.seq}">${u.getRetdate()}</a></td>
                <td><a href="editpost/${u.seq}"><i class="fa-solid fa-pen-to-square"></i></a></td>
                <td><a href="javascript:delete_ok(${u.seq})"><i class="fa-solid fa-trash"></i></a></td>
            </tr>
        </c:forEach>
    </table>
    <br/><button type="button" onclick="location.href='add'">새글쓰기</button>

<script>
    function delete_ok(id){
        var a = confirm("정말로 삭제하겠습니까?");
        if(a) location.href='delete/'+id;
    }
</script>
</body>
</html>
