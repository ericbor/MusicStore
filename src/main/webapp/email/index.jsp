<jsp:include page="/includes/header.jsp" />
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<div class="container">
    <div class="jumbotron">
        <h2>Join our email list</h2>
        <p>If you do, we'll send you announcements about new releases and special offers.</p>

        <p><i>${message}</i></p>

        <form action="<c:url value='/user/subscribeToEmail'/>" method="post">
            <div class="input-group">
                <span class="input-group-addon" id="basic-addon1">Email</span>
                <input type="email" name="email" required class="form-control" aria-describedby="basic-addon1">
            </div>
            <div class="input-group">
                <span class="input-group-addon" id="basic-addon2">First Name</span>
                <input type="text" name="firstName"  required class="form-control" aria-describedby="basic-addon2">
            </div>
                <div class="input-group">
                <span class="input-group-addon" id="basic-addon3">Last Name</span>
                <input type="text" name="lastName"  required class="form-control" aria-describedby="basic-addon3">
                </div>

            <div class="btn-group" role="group" aria-label="...">
                <label>&nbsp;</label>
                <button type="submit" value="Join Now" id="submit" class="btn btn-default">Submit</button>
            </div>
        </form>
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