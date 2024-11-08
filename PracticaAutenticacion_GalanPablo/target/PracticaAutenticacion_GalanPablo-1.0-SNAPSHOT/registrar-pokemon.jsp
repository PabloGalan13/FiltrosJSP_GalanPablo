<%-- 
    Document   : mi-perfil
    Created on : 6 nov. 2024, 14:41:35
    Author     : galan
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Formulario Pokémon</title>
    <link rel="stylesheet" href="./styles/registrarPokemon.css">
</head>
<body>
    <div class="container">
        <div class="center-text">
            <h1> Información del Pokemon </h1>
        </div>
    <form action="registrarPokemon" method="POST">
        <label for="nombrePokemon">Nombre del Pokemón:</label>
        <input type="text" name="nombrePokemon">
        <br> <br>
        <label for="numeroPokedex">Número en la Pokedex:</label>
        <input type="number" name="numeroPokedex">
        <br><br>
        <label for="tipoPokemon">Tipo de Pokémon:</label>
        <br><br>
        <div class="checkbox-container">
            <div class="checkbox-item">
                <input type="checkbox" id="fuego" name="tipoPokemon" value="Fuego">
                <label for="fuego">Fuego</label>
            </div>
            <div class="checkbox-item">
                <input type="checkbox" id="agua" name="tipoPokemon" value="Agua">
                <label for="agua">Agua</label>
            </div>
            <div class="checkbox-item">
                <input type="checkbox" id="planta" name="tipoPokemon" value="Planta">
                <label for="planta">Planta</label>
            </div>
            <div class="checkbox-item">
                <input type="checkbox" id="electrico" name="tipoPokemon" value="Eléctrico">
                <label for="electrico">Eléctrico</label>
            </div>
            <div class="checkbox-item">
                <input type="checkbox" id="hielo" name="tipoPokemon" value="Hielo">
                <label for="hielo">Hielo</label>
            </div>
            <div class="checkbox-item">
                <input type="checkbox" id="lucha" name="tipoPokemon" value="Lucha">
                <label for="lucha">Lucha</label>
            </div>
            <div class="checkbox-item">
                <input type="checkbox" id="veneno" name="tipoPokemon" value="Veneno">
                <label for="veneno">Veneno</label>
            </div>
            <div class="checkbox-item">
                <input type="checkbox" id="tierra" name="tipoPokemon" value="Tierra">
                <label for="tierra">Tierra</label>
            </div>
            <div class="checkbox-item">
                <input type="checkbox" id="volador" name="tipoPokemon" value="Volador">
                <label for="volador">Volador</label>
            </div>
            <div class="checkbox-item">
                <input type="checkbox" id="psiquico" name="tipoPokemon" value="Psíquico">
                <label for="psiquico">Psíquico</label>
            </div>
            <div class="checkbox-item">
                <input type="checkbox" id="bicho" name="tipoPokemon" value="Bicho">
                <label for="bicho">Bicho</label>
            </div>
            <div class="checkbox-item">
                <input type="checkbox" id="roca" name="tipoPokemon" value="Roca">
                <label for="roca">Roca</label>
            </div>
            <div class="checkbox-item">
                <input type="checkbox" id="fantasma" name="tipoPokemon" value="Fantasma">
                <label for="fantasma">Fantasma</label>
            </div>
            <div class="checkbox-item">
                <input type="checkbox" id="dragon" name="tipoPokemon" value="Dragón">
                <label for="dragon">Dragón</label>
            </div>
            <div class="checkbox-item">
                <input type="checkbox" id="siniestro" name="tipoPokemon" value="Siniestro">
                <label for="siniestro">Siniestro</label>
            </div>
            <div class="checkbox-item">
                <input type="checkbox" id="acero" name="tipoPokemon" value="Acero">
                <label for="acero">Acero</label>
            </div>
            <div class="checkbox-item">
                <input type="checkbox" id="hada" name="tipoPokemon" value="Hada">
                <label for="hada">Hada</label>
            </div>
            <div class="checkbox-item">
                <input type="checkbox" id="normal" name="tipoPokemon" value="Normal">
                <label for="normal">Normal</label>
            </div>
        </div>
        <br>
        <label for="nivelEvolucion">Selecciona el nivel de evolución del Pokémon:</label><br><br>
        <select id="nivelEvolucion" name="nivelEvolucion">
            <option value="basico">Básico</option>
            <option value="primeraEvolucion">Primera Evolución</option>
            <option value="segundaEvolucion">Segunda Evolución</option>
        </select> 
        <br><br>
        <label for="nivelPoder">Nivel de Poder</label>
        <input type="range" name="nivelPoder">
        <br><br>
        <label for="descripcion">Descripción del Pokemón:</label> <br>
        <textarea name="descripcion" id="descripcion" rows="5" cols="60"></textarea>
        <br><br>
        <input type="submit" value="Registrar Pokémon">
    </form>    
</body>
</html>
