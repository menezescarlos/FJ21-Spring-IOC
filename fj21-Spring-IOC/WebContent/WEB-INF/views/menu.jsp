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
<title>Menu</title>
</head>
<body>
	<h2>Página inicial da lista de Tarefas</h2>
	<p>Bem vindo, ${usuarioLogado.login}</p>
	<a href="listaTarefas">Clique aqui</a>para acessar a lista de tarefas
	<a href="logout">Sair do sistema</a>
</body>
</html>