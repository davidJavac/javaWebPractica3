<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%
		String mensaje = (String)request.getAttribute("hola_mundo");
		String nombres_concatenados = (String)request.getAttribute("nombres_concatenados");
	%>
	<p>Mensaje desde servlet</p>
	<%= mensaje %>
	<p>Nombres concatenados</p>
	<%= nombres_concatenados %>
</body>
</html>