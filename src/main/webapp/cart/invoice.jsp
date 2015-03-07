<jsp:include page="/includes/header.jsp" />
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<div class="container">
    <div class="jumbotron">
        <h2>Your invoice</h2>

        <table class="table table-hover ">
            <tr>
                <th>Date</th>
                <td>${invoice.invoiceDateDefaultFormat}</td>
                <td></td>
            </tr>
            <tr>
                <th class="top">Ship To</th>
                <td>${user.addressHTMLFormat}</td>
                <td></td>
            </tr>
            <tr>
                <td colspan="3"><hr></td>
            </tr>
            <tr>
                <th>Qty</th>
                <th>Description</th>
                <th>Price</th>
            </tr>

            <c:forEach var="item" items="${invoice.lineItems}">
                <tr>
                    <td>${item.quantity}</td>
                    <td>${item.product.description}</td>
                    <td>${item.totalCurrencyFormat}</td>
                </tr>
            </c:forEach>

            <tr>
                <th>Total:</th>
                <td></td>
                <td>${invoice.invoiceTotalCurrencyFormat}</td>
            </tr>
        </table>

        <form action="<c:url value='/order/displayUser' />" method="post" id="float_left">
            <button type="submit" value="Edit Address" class="btn btn-warning">Edit Address</button>
        </form>

        <form action="<c:url value='/order/displayCreditCard' />" method="post">
            <button type="submit" value="Continue" class="btn btn-success">Continue</button>
        </form>
    </div>

    <jsp:include page="/includes/pre_footer_menu.jsp" />
</div>

<jsp:include page="/includes/footer.jsp" />