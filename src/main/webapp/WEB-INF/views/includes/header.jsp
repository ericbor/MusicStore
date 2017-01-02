<%@page contentType="text/html" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <title>SomeMusicStore</title>

    <link  href="<c:url value="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"/>" rel="stylesheet">
    <script src="<c:url value="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"/>"> </script>


    <script src="<c:url value="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"/>"></script>

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