<jsp:include page="/includes/header.jsp" />
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<div class="container">
     <div class="jumbotron">
          <h2>Thank you, ${user.firstName}</h2>

          <!-- store email address as a global variable and use EL to display it -->

          <p>Your order has been submitted. We'll begin processing your
               order right away. If you have any questions about your order,
               please feel free to contact us at
               <a href="mailto:${custServEmail}">${custServEmail}</a></p>
     </div>

     <jsp:include page="/WEB-INF/views/includes/pre_footer_menu.jsp" />
</div>

<jsp:include page="/includes/footer.jsp" />