<%-- 
    Document   : lista-usuarios
    Created on : 31 oct 2024, 19:18:59
    Author     : Laboratorios
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="styles/style.css"/>
        <title>Usuarios</title>
    </head>
    <body>
        <div class="contenedor">
            <h1>Usuarios Registrados</h1>
            <h2>Usuarios registrados: ${fn:length(requestScope.usuarios)}</h2>
            <c:forEach var="usuario" items="${requestScope.usuarios}">
                <div class="usuario">
                    <div><span>Nombre:</span> ${usuario.name}</div>
                    <div><span>Apellido:</span> ${usuario.lastName}</div>
                    <div><span>Edad:</span> ${usuario.age}</div>
                </div>
            </c:forEach>
        </div>
    </body>
</html>
