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
            <a href="#" class="list-group-item">1. Pete and Jimmy<</a>
            <a href="/musicStore/sound/pf01/whiskey.mp3" class="list-group-item disabled">2. Whiskey Before Breakfast</a>
            <a href="#" class="list-group-item">3. Fishing Rod</a>
            <a href="#" class="list-group-item">4. The Murphy-Ryan Polkas</a>
            <a href="#" class="list-group-item">5. John Henry's Blues</a>
            <a href="/musicStore/sound/pf01/corvair.mp3" class="list-group-item disabled">6. 64 Corvair, Part 2</a>
            <a href="#" class="list-group-item">7. Racoons Like Moonshine, Too</a>
            <a href="#" class="list-group-item">8. Shelf Life</a>
            <a href="#" class="list-group-item">9. Hey Chris</a>
            <a href="#" class="list-group-item">10. Rock and Roll Scene</a>
            <a href="#" class="list-group-item">11. Tiny House</a>
            <a href="#" class="list-group-item">12. Strum Along Slow</a>
            <a href="#" class="list-group-item">13. She's Moving Back Home</a>
            <a href="#" class="list-group-item">14. When I Was Nine</a>
            <a href="#" class="list-group-item">15. Kangaroo's Paw</a>
            <a href="#" class="list-group-item">16. Sound of the Fiddle</a>
            <a href="#" class="list-group-item">17. Amatxi Smiled</a>
            <a href="#" class="list-group-item">18. Yeah</a>
            <a href="#" class="list-group-item">19. Dashboard Waltz</a>
          </div>
        </div>

      </div>
      <jsp:include page="/includes/column_right_buttons.jsp" />

    </div>
  </div>

  <jsp:include page="/includes/pre_footer_menu.jsp" />
</div>

<jsp:include page="/includes/footer.jsp" />