<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>


<html>
	<head>
		<jsp:include page="../fragments/header-estrutura.jsp" />
		<title>Cadastre-se</title>
	</head>
<body>

	<div class="middlePage">
		<div class="page-header">
			<h1 class="logo">Cadastre-se</h1>
		</div>
		<div class="panel panel-info">
			<div class="panel-heading">
				<h3 class="panel-title">Realize seu cadastro</h3>
			</div>
			<div class="panel-body">
				<div class="row">
					<form:form class="form-horizontal" id="signup"
						action="${signupUrl}" method="post" modelAttribute="signupForm">
						<div class="form-group">
							<div class="form-item">
								<div class="col-sm-2 control-label">
									<form:label path="firstName">Nome 
										<form:errors path="firstName" cssClass="error" />
									</form:label>
								</div>
								<div class="col-sm-6">
									<form:input path="firstName" class="form-control" />
								</div>
							</div>
						</div>
						<div class="form-group">
							<div class="form-item">
								<div class="col-sm-2 control-label">
									<form:label path="lastName">Sobrenome <form:errors
											path="lastName" cssClass="error" />
									</form:label>
								</div>
								<div class="col-sm-6">
									<form:input path="lastName" class="form-control" />
								</div>
							</div>
						</div>
						<div class="form-group">
							<div class="form-item">
								<div class="col-sm-2 control-label">
									<form:label path="username">Nome de usuário 
										<form:errors
											path="username" cssClass="error" />
									</form:label>
								</div>
								<div class="col-sm-6">
									<form:input path="username" class="form-control" />
								</div>
							</div>
						</div>
						<div class="form-group">
							<div class="form-item">
								<div class="col-sm-2 control-label">
									<form:label path="password">Senha <form:errors
											path="password" cssClass="error" />
									</form:label>
								</div>
								<div class="col-sm-6">
									<form:password path="password" class="form-control" />
								</div>
							</div>
						</div>
						<div class="form-group">
							<div class="col-sm-2"></div>
							<div class="col-sm-2">
								<button type="submit" class="btn btn-primary">
									Salvar <i class="glyphicon glyphicon-floppy-disk"></i>
								</button>
							</div>
							<div class="col-sm-2">
								<a href="javascript:history.back();"
									class="btn btn-danger">Cancelar</a>
							</div>
						</div>
					</form:form>
				</div>
			</div>
		</div>
	</div>
	<jsp:include page="../fragments/footer.jsp" />
</body>
</html>