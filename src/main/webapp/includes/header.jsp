<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <meta charset="utf-8">
    <title>Some Music Store</title>
    <link rel="shortcut icon" href="<c:url value ='/favicon.png'/>"/>
    <link rel="stylesheet" href="<c:url value ='/styles/main.css'/>"/>
    <script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
</head>

<body>
<header>
    <img src="<c:url value='/logo.png'/>" alt="Some Music Store logo" width="80">

    <h1>Some Music Store</h1>

    <h2>Find here some music yu like!</h2>
</header>
<nav id="nav_bar">
    <ul>
        <li><a href="<c:url value='/admin'/>">Admin</a></li>
        <li><a href="<c:url value='/user/deleteCookies'/>">Delete Cookies</a></li>
        <li><a href="<c:url value='/order/showCart'/>">Show Cart</a></li>
    </ul>
</nav>
</body>
</html>
