<jsp:include page="/includes/header.jsp" />
<jsp:include page="/includes/column_left_catalog.jsp" />

<!-- start the middle column -->

<!-- If necessary, this page could be generated from the database. -->

<section>
  <h1>The Fresh Corn Records Catalog</h1>

  <h2>86 (the band)</h2>
  <p><a href="8601" action="<c:url value='/catalog/showProduct'/>">True Life Songs and Pictures</a></p>


  <h2 class="top_margin">Paddlefoot</h2>
  <p><a href="pf01">Paddlefoot (the first album)</a></p>
  <p><a href="pf02">Paddlefoot (the second album)</a></p>

  <h2 class="top_margin">Joe Rut</h2>
  <p><a href="jr01">Genuine Wood Grained Finish</a></p>
</section>

<!-- end the middle column -->

<jsp:include page="/includes/column_right_news.jsp" flush="true" />
<jsp:include page="/includes/footer.jsp" />
