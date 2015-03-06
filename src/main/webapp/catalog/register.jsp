<jsp:include page="/includes/header.jsp" />
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<div class="container">
  <div class="jumbotron">
    <div class="row">
      <div class="col-md-9">
    <h1>Download registration</h1>

    <p>Before you can download and listen to these sound files,
      you must register with us by entering your name and email
      address below.</p>

    <!-- Use the JSTL url tag to encode the URL -->
    <form action="<c:url value='/catalog/product/${product.code}/listen/register'/>" method="post">
      <label>Email</label>
      <input type="email" name="email" required><br>
      <label>First Name</label>
      <input type="text" name="firstName" required><br>
      <label>Last Name</label>
      <input type="text" name="lastName" required><br>
      <label>&nbsp;</label>
      <input type="submit" value="Register" id="submit">
    </form>
      </div>

      <div class="col-md-3">
        <button type="button" class="btn btn-default btn-lg">
        <form method="post" action="<c:url value='/order/addItem'/>">
          <input type="hidden" name="productCode" value="${product.code}">
          <span class="glyphicon glyphicon-shopping-cart" aria-hidden="true"></span>
        </form>
        </button>



        <button type="button" class="btn btn-default btn-lg">
          <a href="<c:url value='/catalog/product/${product.code}/listen' />">
   <span class="glyphicon glyphicon-headphones"> </span></a>
        </button>

        </div>
      </div>
  </div>

  <div class="row">
    <div class="col-md-3">
      <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
    </div>
    <div class="col-md-3">
      <p>Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>
    </div>
    <div class="col-md-3">
      <p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam.</p>
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
</div>

<jsp:include page="/includes/footer.jsp" />