<!DOCTYPE html>
<%@ page session="false"%>
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
<title>Bem Vindo</title>
<jsp:include page="../fragments/header-estrutura.jsp" />
</head>
<body>
	<div class="container">
		<div class="page-header">
			<h1 class="logo">
				Bem Vindo
			</h1>

		</div>
		<div class="logo">
			<div align="right">
				<a class="btn btn-warning" href="<c:url value="/signout" />">Sair</a>
			</div>
			<div class="panel-body">
				<div class="row">
					<h3>
						Welcome,
						<c:out value="${account.firstName}" />
						!
					</h3>
				</div>
			</div>
		</div>
	</div>
	<p></p>
</body>
</html>