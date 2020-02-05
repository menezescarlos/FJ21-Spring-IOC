<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link href="resources/css/tarefas.css" rel="stylesheet">
<link href="resources/css/jquery.css" rel="stylesheet">
<script src="resources/js/jquery.js"></script>
<script src="resources/js/jquery-ui.js"></script>
<title>Adicionar Tarefas</title>
</head>
<body>
	<h3>Adicionar Tarefas</h3>
	<form action="adicionaTarefa" method="post">
	Descrição: <br>
	<textarea name="descricao" rows="5" cols="100"></textarea><br>
	<input type="submit" value="Adicionar">
	
	
	</form>
</body>
</html>