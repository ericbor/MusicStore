<jsp:include page="/includes/header.jsp" />
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<div class="container">
    <div class="jumbotron">
        <h1>Some Music Store Catalog</h1>

        <h2>86 (the band)</h2>
        <p><a href="product/8601">True Life Songs and Pictures</a></p>

        <h2 class="top_margin">Paddlefoot</h2>
        <p><a href="product/pf01">Paddlefoot (the first album)</a></p>
        <p><a href="product/pf02">Paddlefoot (the second album)</a></p>

        <h2 class="top_margin">Joe Rut</h2>
        <p><a href="product/jr01">Genuine Wood Grained Finish</a></p>
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