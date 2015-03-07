<jsp:include page="/includes/header.jsp" />
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<div class="container">
  <div class="jumbotron">
    <div class="row">
      <div class="col-md-10">
        <jsp:include page="/includes/product_table.jsp" />
        <p>
          The second CD from San Francisco's Paddlefoot finds the band maturing as it
          roams through much of the same musical terrain as the previous CD. While this
          album occasionally rocks, it also has its introspective and bittersweet moments.
          "Neon Lights" is a romantic tribute to neon lights, "Twist Away" is a heartfelt
          song of longing and loss, and "Let the Possums Play Possum" is a instrumental romp
          that's driven by dual fiddles. If you liked the first CD, you'll like this one too.
        </p>
      </div>

      <jsp:include page="/includes/column_right_buttons.jsp" />

    </div>
  </div>

  <jsp:include page="/includes/pre_footer_menu.jsp" />
</div>

<jsp:include page="/includes/footer.jsp" />