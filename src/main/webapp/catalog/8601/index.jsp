<jsp:include page="/includes/header.jsp" />
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<div class="container">
    <div class="jumbotron">
        <div class="row">
            <div class="col-md-10">
                <jsp:include page="/includes/product_table.jsp" />
                <p>
                    The debut album from 86 (the band), True Life Songs and Pictures rocks and
                    twangs in equal measure. Filled with banjo, one-string bass, fiddle, and
                    3-part harmonies, this semi-rock, semi-country, semi-bluegrass album covers
                    a lot of ground. "How to Get There" is a rambling epic that unleashes a
                    rapid-fire lyrical barrage while "Don't Close Your Eyes" and "Morning Sun"
                    are more melancholy and bittersweet.
                </p>
            </div>

            <jsp:include page="/includes/column_right_buttons.jsp" />

        </div>
    </div>

    <jsp:include page="/includes/pre_footer_menu.jsp" />
</div>

<jsp:include page="/includes/footer.jsp" />
