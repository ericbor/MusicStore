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
                        <a href="/musicStore/sound/jr01/filter.mp3" class="list-group-item disabled">1. Filter</a>
                        <a href="#" class="list-group-item">2. Find My Way Marie</a>
                        <a href="#" class="list-group-item">3. Hole</a>
                        <a href="#" class="list-group-item">4. 1400 Years</a>
                        <a href="/musicStore/sound/jr01/so_long.mp3" class="list-group-item disabled">5. So Long Lazy Ray</a>
                        <a href="#" class="list-group-item">6. A Tuna Is a Damn Big Fish</a>
                        <a href="#" class="list-group-item">7. El Dorado</a>
                        <a href="#" class="list-group-item">8. Dream of You</a>
                        <a href="#" class="list-group-item">9. This Sea Is Full of Monsters</a>
                        <a href="#" class="list-group-item">10. A Place in All This</a>
                        <a href="#" class="list-group-item">11. GTTSWMD</a>
                        <a href="#" class="list-group-item">12. AM Land</a>
                        <a href="#" class="list-group-item">13. Whole Month of Sundays</a>
                        <a href="#" class="list-group-item">14. Penny From a Poor Man</a>
                    </div>
                </div>

            </div>

            <jsp:include page="/includes/column_right_buttons.jsp" />

        </div>
    </div>

    <jsp:include page="/includes/pre_footer_menu.jsp" />
</div>

<jsp:include page="/includes/footer.jsp" />