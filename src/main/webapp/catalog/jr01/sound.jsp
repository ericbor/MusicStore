<jsp:include page="/includes/header.jsp" />
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<div class="container">
    <div class="jumbotron">
        <div class="row">
            <div class="col-md-10">
                <jsp:include page="/includes/product_table.jsp" />

                <div class="col-md-5">
                    <div class="list-group">
                        <a href="#" class="list-group-item active disabled">To listen to a track, click on the song's link.</a>

                        <c:forEach items="${product.songList}" var="song" varStatus="loop">

                            <c:choose>
                                <c:when test="${song.playble == '0'}">
                                    <a href="#" class="list-group-item disabled">${loop.index+1}. ${song.songTitle}</a>
                                </c:when>
                                <c:otherwise>
                                    <a href="/sound/${product.code}/${loop.index+1}_song.mp3" class="list-group-item">${loop.index+1}. ${song.songTitle}</a>
                                </c:otherwise>
                            </c:choose>

                        </c:forEach>

                    </div>
                </div>

            </div>

            <jsp:include page="/includes/column_right_buttons.jsp" />

        </div>
    </div>

    <jsp:include page="/includes/pre_footer_menu.jsp" />
</div>

<jsp:include page="/includes/footer.jsp" />