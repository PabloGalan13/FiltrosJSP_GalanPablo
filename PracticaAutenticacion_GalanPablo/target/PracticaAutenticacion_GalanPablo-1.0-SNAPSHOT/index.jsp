<%-- 
    Document   : index
    Created on : 6 nov. 2024, 14:40:50
    Author     : galan
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Iniciar Sesion</title>
        <link rel="stylesheet" href="./styles/index.css">
    </head>
    <body>
        <div class="container">
            <h1>Iniciar Sesion</h1>
            <form action="login" method="POST">
                <label for="user">Usuario:</label>
                <input type="text" name="user">
                <br>
                <label for="password">Contraseña:</label>
                <input type="password" name="password">
                <br>
                <input type="submit" name="Iniciar Sesion">
            </form>
        </div>
    </body>
</html>