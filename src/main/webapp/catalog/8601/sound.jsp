<jsp:include page="/includes/header.jsp" />
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<div class="container">
    <div class="jumbotron">
        <div class="row">
            <div class="col-md-10">
                <jsp:include page="/includes/product_table.jsp" />

                <div class="col-md-5">
                <div class="list-group">
                    <a href="#" class="list-group-item active">To listen to a track, click on the song's link.</a>
                    <a href="#" class="list-group-item">1. How to Get There</a>
                    <a href="/musicStore/sound/8601/star.mp3" class="list-group-item disabled">2. You Are a Star</a>
                    <a href="/musicStore/sound/8601/no_difference.mp3" class="list-group-item disabled">3. Don't Make No Difference</a>
                    <a href="#" class="list-group-item">4. Unidentified Fiddling Object</a>
                    <a href="#" class="list-group-item">5. Beat Up Old Car</a>
                    <a href="#" class="list-group-item">6. Wildflowers</a>
                    <a href="#" class="list-group-item">7. What You Whistle When You Walk Home</a>
                    <a href="#" class="list-group-item">8. Three Sheets to the Wind</a>
                    <a href="#" class="list-group-item">9. Singin' Drunk</a>
                    <a href="#" class="list-group-item">10. Don't Close Your Eyes</a>
                    <a href="#" class="list-group-item">11. Morning Sun</a>
                </div>
                </div>


            </div>

            <jsp:include page="/includes/column_right_buttons.jsp" />

        </div>
    </div>

    <jsp:include page="/includes/pre_footer_menu.jsp" />
</div>

<jsp:include page="/includes/footer.jsp" />