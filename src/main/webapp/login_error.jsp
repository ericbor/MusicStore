<jsp:include page="/includes/header.jsp" />
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<div class="container">
    <div class="jumbotron">
        <a href="<c:url value='/admin' />">
            <h2>Admin Menu</h2>
        </a>


        <h3>Login Form - Error</h3>
        <p>You did not log in successfully.</p>
        <p>Please check your username and password and try again.</p>

        <form action="j_security_check" method="get">
            <label>Username</label>
            <input type="text" name="j_username"><br>
            <label>Password</label>
            <input type="password" name="j_password"><br>
            <label>&nbsp;</label>
            <input type="submit" value="Login">
        </form>

    </div>

</div>

<jsp:include page="/includes/footer.jsp" />