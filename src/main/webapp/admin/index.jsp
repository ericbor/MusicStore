<jsp:include page="/includes/header.jsp" />
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<div class="container">
    <div class="jumbotron">
        <a href="<c:url value='/admin' />">
            <h2>Admin Menu</h2>
        </a>


        <!-- these Form tags don't force a secure connection -->
        <form action="<c:url value='/adminController/displayInvoices'/>" method="post">
            <input type="submit" value="Process Invoices" class="left_margin">
        </form>
        <form action="reports.jsp" method="post">
            <input type="submit" value="Display Reports" class="left_margin">
        </form>

    </div>

</div>

<jsp:include page="/includes/footer.jsp" />