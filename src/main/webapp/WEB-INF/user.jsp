<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<html>
<head>
    <title>${client.name}</title>
</head>
<body>

<div class="container">
    <form method="post" action="${client.id}">

        <h3>Client's information</h3>
        <ul>
            <li>${client.name}</li>
            <li>${client.email}</li>
            <c:forEach items="${phones}" var="phone">
                <li><a href="/phones/${phone.id}">${phone.brand} ${phone.model}</a></li>
            </c:forEach>
        </ul>
        <h3>Add new phone</h3>
        <label for="brand">Phone brand</label>
        <input type="text" id="brand" name="brand">

        <label for="model">Phone model</label>
        <input type="text" id="model" name="model">
        <input type="hidden" name="clientId" value=${client.id}>
        <input type="submit" name="action" value="Submit">
    </form>

</div>

</body>
</html>
