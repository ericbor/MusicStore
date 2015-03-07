<jsp:include page="/includes/header.jsp" />
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<div class="container">
    <div class="jumbotron">
        <h2>Your cart</h2>
        <c:choose>
            <c:when test="${emptyCart != null}">
                <p>Your cart is empty.</p>
            </c:when>
            <c:otherwise>
                <table class="table table-hover ">
                    <tr>
                        <th>Qty</th>
                        <th>Description</th>
                        <th>Price</th>
                        <th>Amount</th>
                        <th>&nbsp;</th>
                    </tr>
                    <c:forEach var="item" items="${cart.items}">
                        <tr class="cart_row">
                            <td>
                                <form action="<c:url value='/order/updateItem'/>" method="post">
                                    <input type="hidden" name="productCode" value="<c:out value='${item.product.code}'/>">
                                    <input type=text name="quantity" value="<c:out value='${item.quantity}'/>" id="quantity">
                                    <button type="submit" value="Update" class="btn btn-info">Update</button>
                                </form>
                            </td>
                            <td>${item.product.description}</td>
                            <td>${item.product.priceCurrencyFormat}</td>
                            <td>${item.totalCurrencyFormat}</td>
                            <td>
                                <form action="<c:url value='/order/removeItem'/>" method="post">
                                    <input type="hidden" name="productCode" value="<c:out value='${item.product.code}'/>">
                                    <button type="submit" value="Remove" class="btn btn-danger">Remove</button>
                                </form>
                            </td>
                        </tr>
                    </c:forEach>
                    <tr>
                        <td colspan="5">
                            <p><b>To change the quantity for an item</b>, enter the new quantity
                                and click on the Update button.</p>
                            <p><b>To remove an item</b>, click on the Remove button.</p>
                        </td>
                        <td colspan="3">&nbsp;</td>
                    </tr>
                </table>
            </c:otherwise>
        </c:choose>

        <form action="<c:url value='/catalog'/>" method="get" id="float_left">
            <button type="submit" value="Continue Shopping" class="btn btn-success">Continue Shopping</button>
        </form>

        <c:if test="${emptyCart == null}">
            <!-- Connection is NOT SECURE.  For testing only. -->
            <form action="<c:url value='/order/checkUser'/>" method="post">
                <button type="submit" value="Checkout" class="btn btn-success">Checkout</button>
            </form>
            <!-- Connection is SECURE.  Before you can use it, you need to configure
            a secure connection on your system as described in chapter 15, comment
            out the previous form, and remove the comments from the following form. -->
            <!--
            <form action="${absolutePathSecure}/order/checkUser" method="post">
            <input type="submit" value="Checkout">
            </form>
            -->
        </c:if>
    </div>

    <jsp:include page="/includes/pre_footer_menu.jsp" />
</div>

<jsp:include page="/includes/footer.jsp" />