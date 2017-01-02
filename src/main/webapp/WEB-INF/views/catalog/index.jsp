<jsp:include page="../includes/header.jsp" />
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<div class="container">
    <div class="jumbotron">
        <h1>Some Music Store Catalog</h1>

        <h2>86 (the band)</h2>
        <p><a  href="<spring:url value="product/8601"/>">True Life Songs and Pictures</a></p>

        <h2 class="top_margin">Paddlefoot</h2>
        <p><a href="<spring:url value="product/pf01"/>">Paddlefoot (the first album)</a></p>
        <p><a href="<spring:url value="product/pf02"/>">Paddlefoot (the second album)</a></p>

        <h2 class="top_margin">Joe Rut</h2>
        <p><a href="<spring:url value="product/jr01"/>">Genuine Wood Grained Finish</a></p>
    </div>

    <jsp:include page="../includes/pre_footer_menu.jsp" />
</div>

<jsp:include page="../includes/footer.jsp" />