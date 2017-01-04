<jsp:include page="../includes/header.jsp" />
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<div class="container">
    <div class="jumbotron">
        <div class="row">
            <div class="col-md-10">

                <div class="row">
                    <div class="col-md-5">
                        <img src="<spring:url value="/resources/images/${product.productCode}_cover.jpg"/>" width="175" height="175" alt="Album Image">
                    </div>
                    <div class="col-md-5">
                        <h2>${product.productTitle}</h2>
                        <h2>${product.productAlbum}</h2>
                        <p>${product.productType}</p>
                        <p>${product.priceCurrencyFormat}</p>
                    </div>
                </div>

                <p>${product.productDescription}</p>
            </div>

            <jsp:include page="../includes/column_right_buttons.jsp" />

        </div>
    </div>

    <jsp:include page="../includes/pre_footer_menu.jsp" />
</div>

<jsp:include page="../includes/footer.jsp" />
