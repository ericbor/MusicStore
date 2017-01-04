<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>

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
