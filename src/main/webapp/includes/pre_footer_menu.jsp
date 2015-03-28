<%@ page import="java.util.Random" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>



<div class="row">
  <div class="col-md-9">
    <img src="randomController" width="175" height="175" alt="Album Image">

  </div>
  <div class="col-md-3">
    <ul class="nav nav-pills nav-stacked">
      <li class="active"> <a href="<c:url value='/' />">Home</a></li>
      <li><a href="<c:url value='/catalog' />">Browse Catalog</a></li>
      <li><a href="<c:url value='/email' />">Join Email List</a></li>
      <li><a href="<c:url value='/customer_service' />">Customer Service</a></li>
    </ul>
  </div>
  <div class="clearfix visible-lg"></div>
</div>
<div class="row">
  &nbsp;
  </div>