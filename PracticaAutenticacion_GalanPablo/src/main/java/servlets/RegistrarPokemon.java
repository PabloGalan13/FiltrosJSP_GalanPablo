package servlets;
/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */


import entidad.Pokemon;
import jakarta.servlet.RequestDispatcher;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author galan
 */
public class RegistrarPokemon extends HttpServlet {

    private List<Pokemon> pokemons = new ArrayList<>();
    
    /**

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // Recibir los par�metros del formulario
        String nombre = request.getParameter("nombrePokemon");
        int numeroPokedex = Integer.parseInt(request.getParameter("numeroPokedex"));
        
        // Obtener los tipos seleccionados
        String[] tipos = request.getParameterValues("tipoPokemon");
        String tiposString = (tipos != null) ? String.join(", ", tipos) : "Sin tipo";
        
        // Obtener el nivel de evoluci�n y poder
        String nivelEvolucion = request.getParameter("nivelEvolucion");
        int nivelPoder = Integer.parseInt(request.getParameter("nivelPoder"));
        
        // Obtener la descripci�n
        String descripcion = request.getParameter("descripcion");

        // Crear un objeto Pok�mon con los datos
        Pokemon nuevoPokemon = new Pokemon(nombre, numeroPokedex, tiposString, nivelEvolucion, nivelPoder, descripcion);

        // Agregar el nuevo Pok�mon a la lista
        pokemons.add(nuevoPokemon);

        // Pasar los Pok�mon a la vista (JSP)
        request.setAttribute("pokemons", pokemons);

        // Redirigir a la p�gina para ver los Pok�mon registrados
        RequestDispatcher dispatcher = request.getRequestDispatcher("/home.jsp");
        dispatcher.forward(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
