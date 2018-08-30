<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<%--
  Created by IntelliJ IDEA.
  User: wluka
  Date: 23.08.18
  Time: 14:34
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Service Info</title>
</head>
<body>

<h2>Service info of ${phone.name} ${messages.name}</h2>
<p>This is a Phonebook application</p>


<table style="width:100%">
  <tr>
    <th>ID</th>
    <th>Description</th>
    <th>Date</th>
    <th>Annotation</th>
    <th>Price</th>
  </tr>

  <c:forEach items="${services}" var="service">

      <tr>
        <th> <a href="jsonservice/service=${service.id}">${service.id}</a></th>
        <th>${service.description}</th>
        <th>${service.date}</th>
        <th>${service.annotation}</th>
        <th>${service.price}</th>
      </tr>

      <a href="jsonservices/phone=${phoneid}">Generate all service</a>

  </c:forEach>

</table>

</body>
</html>