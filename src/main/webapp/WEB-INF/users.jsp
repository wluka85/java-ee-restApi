<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<html>
<head>
    <title>Users</title>
</head>
<body>
<div class="container">
    <div class="list-container">

        <form method="POST" action="userservlet">
            <table>
                <th>Client's name</th>
                <th>Delete client</th>

                <c:forEach items="${clients}" var="client">
                <tr>
                    <td><a href="/home/${client.id}">${client.name}</a></td>
                    <td><input type="hidden" name="ID" value=${client.id}>
                        <input type="submit" name="action" value="Delete" /></td>
                </tr>
                </c:forEach>
            </table>
        </form>
    </div>
</div>

</body>
</html>
