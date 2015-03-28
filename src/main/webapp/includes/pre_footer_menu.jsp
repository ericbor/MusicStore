<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<div class="row">
  <div class="col-md-2">
    <a href="<c:url value='/catalog/product/${random}' />">
    <img src="/musicStore/images/${random}_cover.jpg" width="175" height="175" alt="Album Image">
      </a>
  </div>
  <div class="col-md-7">
<h3>New Arrival<br>
    <small>
      Browse the latest and greatest music, just arrived at Some Music Store.
      Everything you see here is in stock, and individually prepared just for you.
      Get fast, free shipping and secure checkout when you buy online!
    </small>
</h3>
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