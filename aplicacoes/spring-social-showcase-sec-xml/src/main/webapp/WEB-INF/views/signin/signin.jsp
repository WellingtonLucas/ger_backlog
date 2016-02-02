<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>
<html>
	<head>
		<jsp:include page="../fragments/header-estrutura.jsp" />
		<title>Faça seu login</title>
	</head>

<body>
	<div class="section">
		<div class="container-fluid">
			<div class="row">
				<div class="col-sm-8 col-md-10 main">
					<div class="panel panel-primary">
			
						<form id="signin" action="<c:url value="/signin/authenticate" />" method="post">
							<div class="formInfo">
						  		<c:if test="${param.error eq 'bad_credentials'}">
						  		<div class="error">
						  			Your sign in information was incorrect.
						  			Please try again or <a href="<c:url value="/signup" />">sign up</a>.
						  		</div>
						 	 	</c:if>
						  		<c:if test="${param.error eq 'multiple_users'}">
						  		<div class="error">
						  			Multiple local accounts are connected to the provider account.
						  			Try again with a different provider or with your username and password.
						  		</div>
						 	 	</c:if>
							</div>
							<fieldset>
								<label for="login">Username</label>
								<input id="login" name="j_username" type="text" size="25" <c:if test="${not empty signinErrorMessage}">value="${SPRING_SECURITY_LAST_USERNAME}"</c:if> />
								<label for="password">Password</label>
								<input id="password" name="j_password" type="password" size="25" />	
							</fieldset>
							<button type="submit">Sign In</button>
							
							<p>Some test user/password pairs you may use are:</p>
							<ul>
								<li>habuma/freebirds</li>
								<li>kdonald/melbourne</li>
								<li>rclarkson/atlanta</li>
							</ul>
							
							<p>Or you can <a href="<c:url value="/signup"/>">signup</a> with a new account.</p>
						</form>
					</div>
				</div>
			</div>	
		</div>
	</div>
	<h3>Entre via Facebook:</h3>

	<!-- FACEBOOK SIGNIN -->
    <p><a href="<c:url value="/auth/facebook"/>"><img src="<c:url value="/resources/social/facebook/sign-in-with-facebook.png"/>" border="0"/></a><br/></p>
    <jsp:include page="../fragments/footer.jsp" />
</body>
</html>	