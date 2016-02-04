<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>
<%@ taglib uri="http://www.springframework.org/spring-social/social/tags" prefix="social" %>
<%@ page session="false" %>

<html>
	<head>
		<jsp:include page="../fragments/header-estrutura.jsp" />
		<title>Bem Vindo!</title>
	</head>
<body role="document">
	<jsp:include page="../fragments/header.jsp" />
	<div class="container theme-showcase" role="main">
		<div class="panel panel-primary">
			<div class="panel-heading">
				<h3>Sua linha do tempo</h3>
			</div>
			<div class="panel-body">
				<form method="POST" id="post" class="form-horizontal" action="<c:url value="/facebook/feed" />">
					<p>Publique na sua linda do tempo:<p>
					<div class="form-group">
						<div class="form-item">
							<textarea id="message" name="message" rows="2" cols="60"></textarea>
						</div>
					</div>
					<button class="btn btn-primary" type="submit"> Postar </button>
				</form>
				
				<div class="feed">
					<ul class="feedList">
					<c:forEach items="${feed}" var="post">
						<li class="post">
							<c:if test="${not empty post.picture}">
								<img src="${post.picture}" align="top"/>
							</c:if>
							<c:out value="${post.message}" /> - <c:out value="${post.name}" />
							<c:out value="${post.from.name}" />
							<hr/>
						</li>
					</c:forEach>
					</ul>
				</div>
			</div>
		</div>
	</div>
</body>
</html>