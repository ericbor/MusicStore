<jsp:include page="/includes/header.jsp" />
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<div class="container">
    <div class="jumbotron">
        <div class="row">
            <div class="col-md-10">
                <jsp:include page="/includes/product_table.jsp" />
                <p>
                    This 68-minute opus from San Francisco's Paddlefoot doesn't pull any
                    punches. Songs like "64 Corvair, Part 2", "Whiskey Before Breakfast",
                    and "The Murphy-Ryan Polkas" mix traditional American and Irish fiddle
                    tunes with indie rock. The result is somewhere between The Pogues, Camper
                    Van Beethoven, and Uncle Tupelo. The sincerity and quirkiness of other songs
                    like "When I Was Nine" and "Tiny House" are more reminiscent of Jonathan Richman.
                </p>
            </div>

            <jsp:include page="/includes/column_right_buttons.jsp" />

        </div>
    </div>

    <jsp:include page="/includes/pre_footer_menu.jsp" />
</div>

<jsp:include page="/includes/footer.jsp" />