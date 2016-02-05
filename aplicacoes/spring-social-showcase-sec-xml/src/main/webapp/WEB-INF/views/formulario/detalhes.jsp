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
	<title>Formulário</title>
</head>

<body role="document">
	<jsp:include page="../fragments/header.jsp" />
		<div class="container theme-showcase" role="main">
			<div class="panel panel-primary">
				<div class="panel-heading">
					Formulário
				</div>
				<div class="panel-body">
					<jsp:include page="../fragments/mensagens.jsp" />
					<div class="col-sm-12">
						<c:forEach var="pergunta" items="${formulario.perguntas}" varStatus="questId">
							<div class="panel panel-default">
								<div class="panel-heading">
									<label>Questão ${questId.count}:
										${pergunta.descricao }
									</label>											
								</div>
								<div class="radio panel-body">
									<label class="col-sm-10">
										<input type="radio" name="opcaoR" id="opcaoR1" disabled="disabled">
										${pergunta.opcoes[0].descricao }
									</label>
								
									<label class="col-sm-10">
										<input type="radio" name="opcaoR" id="opcaoR2" disabled="disabled">
										${pergunta.opcoes[1].descricao }
									</label>
									<label class="col-sm-10">
										<input type="radio" name="opcaoR" id="opcaoR3" disabled="disabled">
										${pergunta.opcoes[2].descricao }
									</label>
									<label class="col-sm-10">
										<input type="radio" name="opcaoR" id="opcaoR4" disabled="disabled">
										${pergunta.opcoes[3].descricao }
									</label>
									<label class="col-sm-10">
										<input type="radio" name="opcaoR" id="opcaoR5" disabled="disabled">
										${pergunta.opcoes[4].descricao }
									</label>
								</div>
							</div>
						</c:forEach>
						<div class="col-sm-12"></div>
						<label class="col-sm-1 field">Nota:</label>
						<div class="col-sm-11 field-value">
							<c:if test="${empty formulario.nota }">
								<label>-</label>
							</c:if>
							<label>${formulario.nota }</label>
						</div>
					</div>
				</div>
				<div class="panel-footer">
					<a class="btn btn-primary btn-lg" id="btShare">
						Compartilhe
					</a>
				</div>					
			</div>
		</div>
	<jsp:include page="../fragments/footer.jsp" />	
</body>
</html>
