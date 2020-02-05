<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link href="resources/css/tarefas.css" rel="stylesheet">
<link href="resources/css/jquery.css" rel="stylesheet">
<script src="resources/js/jquery.js"></script>
<script src="resources/js/jquery-ui.js"></script>
<title>Lista Tarefa</title>
</head>
<body>
	<script type="text/javascript">
		function finalizaAgora(id){
			$.post("finalizaTarefa", {'id' : id}, function(resposta){
				$("#tarefa_"+id).html(resposta);
			});
		}
	</script>
	
	<a href="novaTarefa">Criar nova tarefa</a><br><br>
	
	<table>
		<tr>
			<th>Id</th>
			<th>Descrição</th>
			<th>Finalizado?</th>
			<th>Data de finalização</th>
			<th>Remover</th>
			<th>Alterar</th>
		</tr>
		<c:forEach items="${tarefas}" var="tarefa">
			<tr id="tarefa_${tarefa.id}">
				
				<td>${tarefa.id}</td>
				<td>${tarefa.descricao}</td>

				<c:if test="${tarefa.finalizado eq true}">
					<td>Finalizado</td>
				</c:if>
				
				<c:if test="${tarefa.finalizado eq false}">
					<td>
				<a href="#" onClick="finalizaAgora(${tarefa.id})">
						Finalizar
				</a></td>
				</c:if>
				
				<td>
					<fmt:formatDate
						value="${tarefa.dataFinalizacao.time}"
						pattern="dd/MM/yyyy"/>
				</td>
				
				<td><a href="removeTarefa?id=${tarefa.id}">Remover</a></td>
				<td><a href="mostraTarefa?id=${tarefa.id}">Alterar</a></td>
			</tr>
		</c:forEach>
	</table>
	
</body>
</html>