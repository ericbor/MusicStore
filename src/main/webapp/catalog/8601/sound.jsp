<jsp:include page="/includes/header.jsp" />
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<div class="container">
    <div class="jumbotron">
        <div class="row">
            <div class="col-md-10">
                <jsp:include page="/includes/product_table.jsp" />

                <p>To listen to a track, click on the song's link.</p>

                <p>1. How to Get There</p>
                <p>2. <a href="/musicStore/sound/8601/star.mp3">You Are a Star</a></p>
                <p>3. <a href="/musicStore/sound/8601/no_difference.mp3">Don't Make No Difference</a></p>
                <p>4. Unidentified Fiddling Object</p>
                <p>5. Beat Up Old Car</p>
                <p>6. Wildflowers</p>
                <p>7. What You Whistle When You Walk Home</p>
                <p>8. Three Sheets to the Wind</p>
                <p>9. Singin' Drunk</p>
                <p>10. Don't Close Your Eyes</p>
                <p>11. Morning Sun</p>
            </div>

            <jsp:include page="/includes/column_right_buttons.jsp" />

        </div>
    </div>

    <jsp:include page="/includes/pre_footer_menu.jsp" />
</div>

<jsp:include page="/includes/footer.jsp" />