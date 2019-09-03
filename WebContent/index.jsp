<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<%@ page import = "java.text.SimpleDateFormat, controller.*" %>
<body>
	<p>Hello world!</p>
	<% SimpleDateFormat sf = new SimpleDateFormat("dd-MM-yyyy");
		String fecha = sf.format(new java.util.Date());
	%>
	<p>hoy es <%= fecha %></p>
	<form action = "Controller" method = "post">
		Nombre 1<input type = "text" name = "nombre1"><br>
		Nombre 2<input type = "text" name = "nombre2"><br>
		Nombre 3<input type = "text" name = "nombre3"><br>
		<input type = "submit" name = "hola_mundo" value = "ir a hola mundo">
	</form>
</body>
</html>