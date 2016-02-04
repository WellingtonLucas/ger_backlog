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
	
	<script type="text/javascript">
  // You probably don't want to use globals, but this is just example code
  var fbAppId = 'replace me';
  var objectToLike = 'http://www.quixada.ufc.br/';

  // This check is just here to make sure you set your app ID. You don't
  // need to use it in production. 
  if (fbAppId === 'replace me') {
    alert('Please set the fbAppId in the sample.');
  }

  /*
   * This is boilerplate code that is used to initialize
   * the Facebook JS SDK.  You would normally set your
   * App ID in this code.
   */

  // Additional JS functions here
  window.fbAsyncInit = function() {
    FB.init({
      appId      : '1188894861155487', // App ID
      status     : true,    // check login status
      cookie     : true,    // enable cookies to allow the
                            // server to access the session
      xfbml      : true,     // parse page for xfbml or html5
                            // social plugins like login button below
      version		 : 'v2.5',  // Specify an API version
    });

    // Put additional init code here
  };

  // Load the SDK Asynchronously
  (function(d, s, id){
     var js, fjs = d.getElementsByTagName(s)[0];
     if (d.getElementById(id)) {return;}
     js = d.createElement(s); js.id = id;
     js.src = "//connect.facebook.net/pt_BR/sdk.js";
     fjs.parentNode.insertBefore(js, fjs);
   }(document, 'script', 'facebook-jssdk'));
  
  function callFacebookLogin ()
  {
      FB.login(function(response) {
          if (response.authResponse) {
              // usuario aceitou o app
          }
      }, {
          scope: 'email, publish_actions, publish_stream'
      });
  };  

  /*
   * This function makes a call to the og.likes API.  The
   * object argument is the object you like.  Other types
   * of APIs may take other arguments. (i.e. the book.reads
   * API takes a book= argument.)
   *
   * Because it's a sample, it also sets the privacy
   * parameter so that it will create a story that only you
   * can see.  Remove the privacy parameter and the story
   * will be visible to whatever the default privacy was when
   * you added the app.
   *
   * Also note that you can view any story with the id, as
   * demonstrated with the code below.
   *
   * APIs used in postLike():
   * Call the Graph API from JS:
   *   https://developers.facebook.com/docs/reference/javascript/FB.api
   * The Open Graph og.likes API:
   *   https://developers.facebook.com/docs/reference/opengraph/action-type/og.likes
   * Privacy argument:
   *   https://developers.facebook.com/docs/reference/api/privacy-parameter
   */

  function postLike() {
    FB.api(
       'https://graph.facebook.com/me/og.likes',
       'post',
       { object: objectToLike,
         privacy: {'value': 'EVERYONE'} },
       function(response) {
         if (!response) {
           alert('Error occurred.');
         } else if (response.error) {
           document.getElementById('result').innerHTML =
             'Error: ' + response.error.message;
         } else {
           document.getElementById('result').innerHTML =
             '<a href=\"https://www.facebook.com/me/activity/' +
             response.id + '\">' +
             'Story created.  ID is ' +
             response.id + '</a>';
         }
       });
  }
</script>
	
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
					<div>
			This example creates a story on Facebook using the <a
				href="https://developers.facebook.com/docs/reference/ogaction/og.likes">
				<code>og.likes</code>
			</a> API. That story will just say that you like an <a
				href="http://techcrunch.com/2013/02/06/facebook-launches-developers-live-video-channel-to-keep-its-developer-ecosystem-up-to-date/">
				article on TechCrunch</a>. The story should only be visible to you.
		</div>
			
			<div>
			<input type="button" value="Create a story with an og.likes action"
				onclick="postLike();">
		</div>
		<div id="result"></div>
		</div>
	</div>
	<p></p>
</body>
</html>