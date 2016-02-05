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
<%@ taglib
	uri="http://www.springframework.org/spring-social/social/tags"
	prefix="social"%>

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
				<h3>
					Olá
					<c:out value="${account.firstName}" />
					!
				</h3>
			</div>

			<script type="text/javascript">
				function getFriends() {
					FB.api('/me/friends', function(response) {
						if (response.data) {
							$.each(response.data, function(index, friend) {
								alert(friend.name + ' has id:' + friend.id);
							});
						} else {
							alert("Error!");
						}
					});
				}
			</script>

			<div class="panel-body">
				<a class="btn btn-lg btn-default" href="<c:url value="/facebook"/>">Facebook</a>
				<social:connected provider="facebook">
					<a class="btn btn-lg btn-primary" href="<c:url value="/facebook"/>">Perfil</a>
					<a class="btn btn-lg btn-primary"
						href="<c:url value="/facebook/feed"/>">Feed</a>
					<a class="btn btn-lg btn-primary"
						href="<c:url value="/facebook/friends"/>">Friends</a>
					<a class="btn btn-lg btn-primary"
						href="<c:url value="/facebook/albums"/>">Albums</a>
				</social:connected>
				<button class="btn btn-lg btn-primary" id="btPostar">Postar</button>
				<button class="btn btn-lg btn-primary" id="btShare">
					Compartilhar</button>
				<div align="right">
					<a class="btn btn-warning" href="<c:url value="/signout" />">Sair</a>
				</div>
				<a href="http://twitter.com/share" class="twitter-share-button"
					data-url="Ger-->" data-text="Muitas coisas pra fazer? Vai uma ajuda? Use GER--> Redes Sociais - 2015.2 UFC/QXD"
					data-count="vertical" data-via="ufcquixada">Tweet</a>
				<script type="text/javascript"
					src="http://platform.twitter.com/widgets.js"></script>
			</div>
		</div>
	</div>
	<jsp:include page="../fragments/footer.jsp" />
</body>
</html>