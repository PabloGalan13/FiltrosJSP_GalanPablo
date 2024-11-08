<%-- 
    Document   : mi-perfil
    Created on : 6 nov. 2024, 14:41:50
    Author     : galan
--%>

<%@ page contentType="text/html" pageEncoding="UTF-8" %>
<%@ page import="java.util.List" %>
<%@ page import="entidad.Pokemon" %> <!-- Reemplaza 'entidad' con el paquete correcto de la clase Pokemon si es necesario -->

<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Home</title>
    <link rel="stylesheet" href="./styles/home.css">
</head>
<body>
    <!-- Título principal -->
    <header class="container">
        <img src="https://upload.wikimedia.org/wikipedia/commons/thumb/9/98/International_Pok%C3%A9mon_logo.svg/1200px-International_Pok%C3%A9mon_logo.svg.png" alt="Pokémon Logo">
    </header>
    
    <!-- Barra de navegación -->
    <nav class="navbar">
        <ul>
            <li><a href="#">Perfil</a></li>
            <li><a href="registrar-pokemon.jsp">Registrar Pokemon</a></li>
        </ul>
    </nav>
    
    <nav class="navbar">
        <h2>Pokémon Registrados</h2>
    </nav>
    
    <!-- Contenido principal -->
    <div class="navbar">
        <!-- Tabla para mostrar los Pokémon -->
        <table>
            <thead>
                <tr>
                    <th>Nombre</th>
                    <th>Número Pokédex</th>
                    <th>Tipos</th>
                    <th>Nivel Evolución</th>
                    <th>Nivel Poder</th>
                    <th>Descripción</th>
                </tr>
            </thead>
            <tbody>
                <% 
                    List<Pokemon> pokemons = (List<Pokemon>) request.getAttribute("pokemons");
                    if (pokemons != null && !pokemons.isEmpty()) {
                        for (Pokemon pokemon : pokemons) {
                %>
                <tr>
                    <td><%= pokemon.getNombre() %></td>
                    <td><%= pokemon.getNumeroPokedex() %></td>
                    <td><%= pokemon.getTipos() %></td>
                    <td><%= pokemon.getNivelEvolucion() %></td>
                    <td><%= pokemon.getNivelPoder() %></td>
                    <td><%= pokemon.getDescripcion() %></td>
                </tr>
                <% 
                        }
                    } else {
                %>
                <tr>
                    <td colspan="6">No se han registrado Pokémon aún.</td>
                </tr>
                <% 
                    }
                %>
            </tbody>
        </table>
    </div>

</body>
</html>
