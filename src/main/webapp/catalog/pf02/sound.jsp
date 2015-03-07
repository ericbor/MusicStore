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
            <a href="/musicStore/sound/pf02/neon.mp3" class="list-group-item disabled">Neon Lights</a>
            <a href="#" class="list-group-item">2. Just About Midnight</a>
            <a href="/musicStore/sound/pf02/tank.mp3" class="list-group-item disabled">3. Tank Hill</a>
            <a href="#" class="list-group-item">4. Let the Possums Play Possum</a>
            <a href="#" class="list-group-item">5. Find Me</a>
            <a href="#" class="list-group-item">6. Take a Picture</a>
            <a href="#" class="list-group-item">7. Billy Banjo</a>
            <a href="#" class="list-group-item">8. Most of the Time</a>
            <a href="#" class="list-group-item">9. Armenian Wedding</a>
            <a href="#" class="list-group-item">10. West Portal</a>
            <a href="#" class="list-group-item">11. Twist Away</a>
            <a href="#" class="list-group-item">12. Kern County Waltz</a>
            <a href="#" class="list-group-item">13. Distance</a>
            <a href="#" class="list-group-item">14. Sunshine on the Trees</a>
          </div>
        </div>
      </div>
      <jsp:include page="/includes/column_right_buttons.jsp" />

    </div>
  </div>

  <jsp:include page="/includes/pre_footer_menu.jsp" />
</div>

<jsp:include page="/includes/footer.jsp" />