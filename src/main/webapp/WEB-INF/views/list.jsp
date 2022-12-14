<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: kimminkyoung
  Date: 2022/12/02
  Time: 3:24 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<html>
<head>
    <title>Title</title>
  <link rel="stylesheet" href="../../resources/css/style.css">
  <script>
    function delete_ok(id){
      var a=confirm("정말로 삭제하겠습니까?");
      if(a) location.href='deleteok/'+id;
    }
  </script>
  <style>
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
    #list tr:hover {background-color: #ffe0e0;}
    #list th {
      padding-top: 12px;
      padding-bottom: 12px;
      text-align: center;
      background-color: #fc4c99;
      color: white;
    }
  </style>
</head>
<body>
<h1>게시판</h1>
<p><a href="login/login">로그아웃 하기</a></p>
<table id="list" width="90%">
  <tr>
    <th>ID</th>
    <th>Category</th>
    <th>Title</th>
    <th>Writer</th>
    <th>Content</th>
    <th>Regate</th>
    <th>Edit</th>
    <th>Delete</th>
  </tr>
  <c:forEach items="${list}" var="u">
    <tr>
      <td> ${u.seq}</td>
      <td> ${u.category}</td>
      <td> ${u.title}</td>
      <td> ${u.writer}</td>
      <td> ${u.content}</td>
      <td> ${u.regdate}</td>
      <td><a href="editform/${u.seq}">Edit</a></td>
      <td><a href="javascript:delete_ok('${u.seq}')">Delete</a></td>
    </tr>
  </c:forEach>
</table>
</body><a href="add">Add New Post</a>
</html>
