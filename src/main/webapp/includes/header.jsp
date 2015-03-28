<%@page contentType="text/html" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<link  href="<c:url value="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css"/>" rel="stylesheet">
<script href="<c:url value="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"/>"> </script>
<script href="<c:url value="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"/>"></script>

<!doctype html>

<html>
<head>
    <meta charset="utf-8">
    <title>SomeMusicStore</title>
    <script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
</head>

<body>

<nav class="navbar navbar-inverse">
    <div class="container-fluid">
        <div class="navbar-header">
            <a class="navbar-brand"  href="<c:url value='/' />">Some Music Store</a>
        </div>

        <div>
            <ul class="nav navbar-nav">
                <li><a href="<c:url value='/admin'/>">Admin</a></li>
                <li><a href="<c:url value='/user/deleteCookies'/>">Delete Cookies</a></li>
                <li><a href="<c:url value='/order/showCart'/>">Show Cart</a></li>
            </ul>
        </div>
    </div>
</nav>