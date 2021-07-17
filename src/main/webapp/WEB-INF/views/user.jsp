<%--
  Created by IntelliJ IDEA.
  User: thaodangxuan
  Date: 17/07/2021 sau CN
  Time: 11:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%--View user.jsp hiển thị thông tin của người dùng trong trường hợp đăng nhập thành công.--%>
<h1>WELCOME</h1>
<h3>ACCOUNT : ${user.account}</h3>
<h3>NAME : ${user.name}</h3>
<h3>EMAIL : ${user.email}/h3>
<h3>AGE : ${user.age}</h3>
</body>
</html>
