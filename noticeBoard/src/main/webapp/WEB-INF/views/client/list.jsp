<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  <style>
    div.container { width: 900px; margin: 50px auto; }
    thead th { background-color: #eee; }
    table{ border-collapse: collapse; width: 100%; }
    td, th { padding: 4px; border: 1px solid lightgray; }
  </style>
</head>
<body>
<div class="container">
  <h1>학생목록</h1>
  
  <table class="table table-bordered table-condensed">
    <thead>
      <tr>
        <th>이름</th>
        <th>id</th>
        <th>비밀번호</th>
      </tr>
    </thead>
    <tbody>
      <c:forEach var="client" items="${clients}">
        <tr>
          <td>${ client.name }</td>
          <td>${ client.id }</td>
          <td>${ client.password }</td>
        </tr>
      </c:forEach>
    </tbody>
  </table>

</div>
</body>
</html>

