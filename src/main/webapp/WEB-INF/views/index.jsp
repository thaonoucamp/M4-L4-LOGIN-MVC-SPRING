<%--
  Created by IntelliJ IDEA.
  User: thaodangxuan
  Date: 16/07/2021 sau CN
  Time: 21:33
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Home</title>
</head>
<body>
<%-- Thuộc tính modelAttribute của thẻ <form:form> được liên kết tới thuộc tính login của ModelAndView trả về từ phương thức home().--%>
<h3>HOME</h3>
<form:form action="login" method="post" modelAttribute="login">
    <fieldset>
        <legend>LOGIN</legend>
        <table>
            <tr>
                <td><form:label path="account">ACCOUNT :</form:label></td>
                <td><form:input path="account"></form:input></td>
            </tr>
            <tr>
                <td><form:label path="password">PASSWORD :</form:label></td>
                <td><form:input path="password"></form:input></td>
            </tr>
            <tr>
                <td></td>
                <td><form:button>LOGIN</form:button></td>
            </tr>
        </table>
    </fieldset>
</form:form>
</body>
</html>
