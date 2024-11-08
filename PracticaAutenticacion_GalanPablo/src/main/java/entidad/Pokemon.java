/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package entidad;

/**
 *
 * @author galan
 */
public class Pokemon {
    private String nombre;
    private int numeroPokedex;
    private String tipos;
    private String nivelEvolucion;
    private int nivelPoder;
    private String descripcion;

    public Pokemon(String nombre, int numeroPokedex, String tipos, String nivelEvolucion, int nivelPoder, String descripcion) {
        this.nombre = nombre;
        this.numeroPokedex = numeroPokedex;
        this.tipos = tipos;
        this.nivelEvolucion = nivelEvolucion;
        this.nivelPoder = nivelPoder;
        this.descripcion = descripcion;
    }

    public String getNombre() {
        return nombre;
    }

    public int getNumeroPokedex() {
        return numeroPokedex;
    }

    public String getTipos() {
        return tipos;
    }

    public String getNivelEvolucion() {
        return nivelEvolucion;
    }

    public int getNivelPoder() {
        return nivelPoder;
    }

    public String getDescripcion() {
        return descripcion;
    }
}
