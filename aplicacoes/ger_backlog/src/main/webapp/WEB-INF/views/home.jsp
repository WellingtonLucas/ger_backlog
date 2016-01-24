<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<html>
    <head>
    	<link rel="icon"
		href="<c:url value="/resources/imagens/logo_ufc.png" />"
		type="image/png" sizes="16x16" />
		<link href="<c:url value="/webjars/bootstrap/3.3.5/css/bootstrap.min.css" />"	rel="stylesheet" />
		<link href="<c:url value="/webjars/bootstrapvalidator/0.5.3/css/bootstrapValidator.css" />" rel="stylesheet" />
		<link href="<c:url value="/webjars/font-awesome/4.5.0/css/font-awesome.min.css"/>" rel="stylesheet"/>
		<link href="<c:url value="/resources/css/login.css"/>" rel="stylesheet"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Home</title>
    </head>
    <body>
       <div class="container">
		    <div class="omb_login">
		    	<h3 class="omb_authTitle">Login or <a href="#">Sign up</a></h3>
				<div class="row omb_row-sm-offset-3 omb_socialButtons">
		    	    <div class="col-xs-4 col-sm-2">
				        <a href="#" class="btn btn-lg btn-block omb_btn-facebook">
					        <i class="fa fa-facebook visible-xs"></i>
					        <span class="hidden-xs">Facebook</span>
				        </a>
			        </div>
		        	<div class="col-xs-4 col-sm-2">
				        <a href="#" class="btn btn-lg btn-block omb_btn-twitter">
					        <i class="fa fa-twitter visible-xs"></i>
					        <span class="hidden-xs">Twitter</span>
				        </a>
			        </div>	
		        	<div class="col-xs-4 col-sm-2">
				        <a href="#" class="btn btn-lg btn-block omb_btn-google">
					        <i class="fa fa-google-plus visible-xs"></i>
					        <span class="hidden-xs">Google+</span>
				        </a>
			        </div>	
				</div>
		
				<div class="row omb_row-sm-offset-3 omb_loginOr">
					<div class="col-xs-12 col-sm-6">
						<hr class="omb_hrOr">
						<span class="omb_spanOr">or</span>
					</div>
				</div>
		
				<div class="row omb_row-sm-offset-3">
					<div class="col-xs-12 col-sm-6">	
					    <form class="omb_loginForm" action="" autocomplete="off" method="POST">
							<div class="input-group">
								<span class="input-group-addon"><i class="fa fa-user"></i></span>
								<input type="text" class="form-control" name="username" placeholder="email address">
							</div>
							<span class="help-block"></span>
												
							<div class="input-group">
								<span class="input-group-addon"><i class="fa fa-lock"></i></span>
								<input  type="password" class="form-control" name="password" placeholder="Password">
							</div>
		                    <span class="help-block">Password error</span>
		
							<button class="btn btn-lg btn-primary btn-block" type="submit">Login</button>
						</form>
					</div>
		    	</div>
				<div class="row omb_row-sm-offset-3">
					<div class="col-xs-12 col-sm-3">
						<label class="checkbox">
							<input type="checkbox" value="remember-me">Remember Me
						</label>
					</div>
					<div class="col-xs-12 col-sm-3">
						<p class="omb_forgotPwd">
							<a href="#">Forgot password?</a>
						</p>
					</div>
				</div>
			</div>	    	
		</div>
		<script src="<c:url value="/webjars/jquery/2.1.0/jquery.min.js" />"></script>
		<script	src="<c:url value="/webjars/bootstrap/3.3.5/js/bootstrap.min.js" />"></script>
		<script src="<c:url value="/webjars/bootstrapvalidator/0.5.3/js/bootstrapValidator.min.js" />"></script>
		
    </body>
</html>
