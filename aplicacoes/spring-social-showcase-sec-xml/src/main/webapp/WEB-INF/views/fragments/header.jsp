<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<nav class="navbar navbar-inverse navbar-fixed-top">
      <div class="container">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand"  href="<c:url value="/"/>">Home</a>
        </div>
       <div id="navbar" class="navbar-collapse collapse">
			<ul class="nav navbar-nav navbar-right">			
				<li class="dropdown" data-tooggle="tooltip"  data-placement="bottom" title="Suas opções">
	              <a href="#" class="dropdown-toggle glyphicon glyphicon-menu-down btn-lg" data-toggle="dropdown" role="button" 
	              aria-haspopup="true" aria-expanded="false"></a>
	              <ul class="dropdown-menu">
	                <li>
	                	<a class="glyphicon glyphicon-log-out btn-lg" data-tooggle="tooltip"  data-placement="bottom"
							title="Sair" href="<c:url value="/signout" />">
							Sair
						</a>
					</li>
					<li></li>
	              </ul>
	            </li>
			</ul>
		</div>

      </div>
    </nav>