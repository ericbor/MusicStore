<jsp:include page="/includes/header.jsp" />
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<div class="container">
    <div class="jumbotron">
        <div class="row">
            <div class="col-md-10">
                <jsp:include page="/includes/product_table.jsp" />

                <p>To listen to a track, click on the song's link.</p>

                <p>1. <a href="/musicStore/sound/jr01/filter.mp3">Filter</a></p>
                <p>2. Find My Way Marie</p>
                <p>3. Hole</p>
                <p>4. 1400 Years</p>
                <p>5. <a href="/musicStore/sound/jr01/so_long.mp3">So Long Lazy Ray</a></p>
                <p>6. A Tuna Is a Damn Big Fish</p>
                <p>7. El Dorado</p>
                <p>8. Dream of You</p>
                <p>9. This Sea Is Full of Monsters</p>
                <p>10. A Place in All This</p>
                <p>11. GTTSWMD</p>
                <p>12. AM Land</p>
                <p>13. Whole Month of Sundays</p>
                <p>14. Penny From a Poor Man</p>
            </div>

            <jsp:include page="/includes/column_right_buttons.jsp" />

        </div>
    </div>

    <jsp:include page="/includes/pre_footer_menu.jsp" />
</div>

<jsp:include page="/includes/footer.jsp" />