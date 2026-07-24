package com.hernan.notas.dao;

import com.hernan.notas.modelo.Nota;
import java.util.ArrayList;
import java.util.List;

public class NotaDAO {

    // Lista donde se almacenarán las notas
    private static List<Nota> listaNotas = new ArrayList<>();

    // Guardar una nota
    public void guardar(Nota nota) {
        listaNotas.add(nota);
    }

    // Listar todas las notas
    public List<Nota> listar() {
        return listaNotas;
    }
}