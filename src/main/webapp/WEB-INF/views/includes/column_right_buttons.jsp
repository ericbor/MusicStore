    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <div class="col-md-2">


        <form method="post" action="<c:url value='/order/addItem'/>">

            <input type="hidden" name="productCode" value="${product.code}">
            <button type="submit" class="btn btn-default btn-lg">
                 <span class="glyphicon glyphicon-shopping-cart" aria-hidden="true"></span>
            </button><br>
        </form>

        <button type="button" class="btn btn-default btn-lg">
            <a href="<c:url value='/catalog/product/${product.code}/listen' />">
                <span class="glyphicon glyphicon-headphones" aria-hidden="true"> </span></a>
        </button>

    </div>