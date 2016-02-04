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
	<script src='http://connect.facebook.net/en_US/all.js'></script>
	<p>
		
	</p>
	<p id='msg'></p>

	<script>
		FB.init({
			appId : "1188894861155487",
			status : true,
			cookie :

			true
		});

		function postToFeed() {

			// calling the API ...
			var obj = {
				method : 'feed',
				message : 'Testando FacebookAPI',
				privacy : {'value' : 'SELF'}
			};

			function callback(response) {

				document.getElementById('msg').innerHTML = "Post ID: "
						+ response['post_id'];
			}

			
		}
		
		function shareInFeed() {

			// calling the API ...
			var obj = {
				method : 'feed',
				redirect_uri : 'https://www.facebook.com/cryswashington?fref=ts',
				link : 'https://developers.facebook.com/docs/reference/dialogs/',
				picture : 'http://fbrell.com/f8.jpg',
				name : 'Facebook Dialogs',
				caption : 'Reference Documentation',
				description : 'Using Dialogs to interact with users.'
			};

			function callback(response) {

				document.getElementById('msg').innerHTML = "Post ID: "
						+ response['post_id'];
			}

			FB.ui(obj, callback);
		}
	</script>

	<div class="container">
		<div class="page-header">
			<h1 class="logo">Bem Vindo</h1>

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
			<div>
				<input type="button" value="Postar"
				onclick="postToFeed();">
			</div>
			<div>
				<input type="button" value="Share"
				onclick="shareInFeed();">
			</div>
		</div>
	</div>
</body>
</html>