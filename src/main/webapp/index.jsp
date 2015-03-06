<jsp:include page="/includes/header.jsp" />
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<div class="container">
    <div class="jumbotron">
        <h1>Some Music Store</h1>
        <p>Thanks for visiting. Make yourself at home. Feel free to browse through
            our musical catalog. When you do, you can listen to samples from the
            albums on our site, or you can download selected sound files and listen
            to them later. We think our catalog contains some great music, and we
            hope you like it as much as we do.</p>

        <p>If you find an album that you like, we hope that you'll use this site
            to order it. Most of the albums we carry aren't available anywhere else!</p>
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