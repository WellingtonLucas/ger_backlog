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
	<div class="middlePage">
		<div class="page-header">
		  <h1 class="logo">Ger-Backlog <small>Gerencie suas atividades!</small></h1>
		</div>
		<div class="panel panel-info">
			<div class="panel-heading">
			  <h3 class="panel-title">Please Sign In</h3>
			</div>
			<div class="panel-body">
				<div class="row">
					<div class="col-md-5" >
						<a href="<c:url value="/auth/facebook"/>"><img src="http://techulus.com/buttons/fb.png" /></a><br/>
					</div>
					<div class="col-md-7" style="border-left:1px solid #ccc;height:160px">
						<form class="form-horizontal" id="signin" action="<c:url value="/signin/authenticate" />" method="post">
							<!-- AJEITAR ISSO AQUI -->
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
							  	<input id="login" name="j_username" type="text" 
							  		<c:if test="${not empty signinErrorMessage}">
							  		value="${SPRING_SECURITY_LAST_USERNAME}"</c:if> 
								  	placeholder="Enter User Name" class="form-control input-md" />
								<br>
								<input id="password" name="j_password" type="password" 
									placeholder="Enter Password" class="form-control input-md" />

								<div class="spacing">
									<a href="<c:url value="/signup"/>">
										<small> Cadastre-se</small>
									</a><br/>
								</div>

								<button type="submit" id="singlebutton" name="singlebutton" class="btn btn-info btn-sm pull-right">Sign In</button>
							</fieldset>
							
						</form>
					</div>
		    
				</div>
			</div>
		</div>
	</div>
    <jsp:include page="../fragments/footer.jsp" />
</body>
</html>	