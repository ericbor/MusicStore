<jsp:include page="/includes/header.jsp" />
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<div class="container">
    <div class="jumbotron">
        <div class="row">
            <div class="col-md-10">
                <jsp:include page="/includes/product_table.jsp" />
                <p>
                    The debut album from Joe Rut rambles from Byrds-esque folk pop of "Filter" to
                    the country sounds of "Find My Way Marie" to psychedelic Brit-pop tunes like
                    "A Place In All This." This well-crafted album is unique and cohesive, revealing
                    its many layers on repeated listens.
                </p>
            </div>

            <jsp:include page="/includes/column_right_buttons.jsp" />

        </div>
    </div>

    <jsp:include page="/includes/pre_footer_menu.jsp" />
</div>

<jsp:include page="/includes/footer.jsp" />
