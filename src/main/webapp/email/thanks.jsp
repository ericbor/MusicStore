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

    <jsp:include page="/includes/pre_footer_menu.jsp" />
</div>

<jsp:include page="/includes/footer.jsp" />