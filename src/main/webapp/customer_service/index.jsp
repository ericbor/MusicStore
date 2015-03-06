<jsp:include page="/includes/header.jsp" />
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<div class="container">
    <div class="jumbotron">
        <h2>Customer Service</h2>
        <p>
            We want to back our music albums up with the best possible service.
            Whether you have a question about what albums we offer, need a printed
            catalog, or need help with an order, just let us know. We'll do everything
            we can to make it easy and enjoyable for you to do business with us.
        </p>
        <p>
            If you have questions or comments, please contact us
            in whatever way is most convenient for you. We look forward to hearing from you!
        </p>
        <h2>Phone:</h2>
        <p>+48-537-883-637</p>
        <h2>FAX:</h2>
        <p>+48-559-440-963</p>
        <h2>Email:</h2>
        <p><a href="mailto:iaroslav.borysov@gmail.com">iaroslav.borysov@gmail.com</a></p>
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