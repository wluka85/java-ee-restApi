<%--
  Created by IntelliJ IDEA.
  User: polikkox
  Date: 28.08.18
  Time: 12:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8"/>
    <link rel="stylesheet" href="../css/style.css">
    <script src="../js/phoneValidation.js"></script>
    <title>Add user</title>
</head>
<body>
<div class="setSiteCenter">
    <header>
        <spam class="HeadTitle">Hello Admin</spam>
    </header>
    <section>
        <div class="mainCommand"><h1>Fill the form below</h1></div>
        <form method="POST" onsubmit="return phoneNumber()">
            <div class="spaceBetween">Name<input class="space" type="text" name="Name" ></div>
            <div class="spaceBetween">Email<input type="text"  name="Email"></div>
            <div class="spaceBetween">Brand<input type="text"  name="Brand"></div>
            <div class="spaceBetween">Model<input type="text"  name="Model"></div>
            <div class="spaceBetween">Description<input type="text"  name="Description"></div>
            <div class="spaceBetween">Annotation<input type="text"  name="Annotation"></div>
            <div class="spaceBetween">Price<input type="text" name="Price" id="telID"></div>
            <input class="submit" type="submit" value="Add">
        </form>
    </section>
</div>
</body>
</html>
