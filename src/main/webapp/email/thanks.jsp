<jsp:include page="/includes/header.jsp" />
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<div class="container">
    <div class="jumbotron">
        <h2>Thanks for joining our email list</h2>
        <p>Here is the information that you entered:</p>

        <h3><span class="label label-success">Email</span>${user.email}</h3>
        <h3><span class="label label-success">First Name</span>${user.firstName}</h3>
        <h3><span class="label label-success">Last Name</span>${user.lastName}</h3>

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