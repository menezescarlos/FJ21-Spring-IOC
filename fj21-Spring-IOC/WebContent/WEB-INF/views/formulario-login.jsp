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
<title>Login</title>
</head>
<body>
	<h2>Página de login das tarefas</h2>
	<form action="efetuaLogin" method="post">
		Login: <input type="text" name="login" />
		Senha: <input type="password" name="senha" />
		<input type="submit" value="Entrar nas tarefas" />
	</form>
</body>
</html>