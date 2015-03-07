<jsp:include page="/includes/header.jsp" />
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<div class="container">
    <div class="jumbotron">
        <h2>Enter your name and contact information</h2>

        <form action="<c:url value='/order/processUser' />" method=post class="form-horizontal">

            <div class="form-group">
                <label class="col-md-2 control-label">First Name</label>
                <div class="col-md-4">
                    <input class="form-control" placeholder="required" required="required" type="text" name="firstName"  maxlength="30" value="${user.firstName}"/>
                </div>
                </div>

            <div class="form-group">
                <label class="col-md-2 control-label">Last Name</label>
                <div class="col-md-4">
                    <input class="form-control" placeholder="required" required="required" type="text" name="lastName"  maxlength="30" value="${user.lastName}"/>
                </div>
            </div>

            <div class="form-group">
                <label class="col-md-2 control-label">Email Address</label>
                <div class="col-md-4">
                    <input class="form-control" placeholder="required" required="required" type="email" name="email"  maxlength="30" value="${user.email}"/>
                </div>
            </div>

            <div class="form-group">
                <label class="col-md-2 control-label">Company</label>
                <div class="col-md-4">
                    <input class="form-control" type="text" name="companyName"  maxlength="30" value="${user.companyName}"/>
                </div>
            </div>

            <div class="form-group">
                <label class="col-md-2 control-label">Address1</label>
                <div class="col-md-4">
                    <input class="form-control" placeholder="required" required="required" type="text" name="address1"  maxlength="30" value="${user.address1}"/>
                </div>
            </div>

            <div class="form-group">
                <label class="col-md-2 control-label">Address2</label>
                <div class="col-md-4">
                    <input class="form-control" type="text" name="address2"  maxlength="30" value="${user.address2}"/>
                </div>
            </div>

            <div class="form-group">
                <label class="col-md-2 control-label">City</label>
                <div class="col-md-4">
                    <input class="form-control" placeholder="required" required="required" type="text" name="city"  maxlength="30" value="${user.city}"/>
                </div>
            </div>

            <div class="form-group">
                <label class="col-md-2 control-label">State</label>
                <div class="col-md-4">
                    <input class="form-control" placeholder="required" required="required" type="text" name="state"  maxlength="30" value="${user.state}"/>
                </div>
            </div>

            <div class="form-group">
                <label class="col-md-2 control-label">Zip Code</label>
                <div class="col-md-4">
                    <input class="form-control" placeholder="required" required="required" type="text" name="zip"  maxlength="30" value="${user.zip}"/>
                </div>
            </div>

            <div class="form-group">
                <label class="col-md-2 control-label">Country</label>
                <div class="col-md-4">
                    <input class="form-control" placeholder="required" required="required" type="text" name="country"  maxlength="30" value="${user.country}"/>
                </div>
            </div>

            <div class="form-group">
                <div class="col-sm-offset-2 col-sm-10">

                <label>&nbsp;</label>
                <button type="submit" value="Continue" id="submit" class="btn btn-success">Continue</button>
            </div>
                </div>
        </form>
    </div>

    <jsp:include page="/includes/pre_footer_menu.jsp" />
</div>

<jsp:include page="/includes/footer.jsp" />