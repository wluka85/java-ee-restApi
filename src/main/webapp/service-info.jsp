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

  <c:forEach items="${contacts}" var="contact">

      <tr>
        <th>${service-info.id}</th>
        <th>${service-info.description}</th>
        <th>${service-info.date}</th>
        <th>${service-info.annotation}</th>
        <th>${service-info.price}</th>
      </tr>

  </c:forEach>

</table>

</body>
</html>