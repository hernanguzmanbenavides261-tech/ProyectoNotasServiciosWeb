package com.hernan.notas.resources;

import com.hernan.notas.dao.NotaDAO;
import com.hernan.notas.modelo.Nota;
import jakarta.ws.rs.*;
import jakarta.ws.rs.core.MediaType;
import jakarta.ws.rs.core.Response;
import java.util.List;

@Path("notas")
public class NotaResource {

    private NotaDAO notaDAO = new NotaDAO();

    // Endpoint para listar todas las notas (Método GET)
    @GET
    @Produces(MediaType.APPLICATION_JSON)
    public List<Nota> obtenerNotas() {
        return notaDAO.listar();
    }

    // Endpoint para registrar una nueva nota (Método POST)
    @POST
    @Consumes(MediaType.APPLICATION_JSON)
    @Produces(MediaType.APPLICATION_JSON)
    public Response crearNota(Nota nuevaNota) {
        if (nuevaNota != null) {
            notaDAO.guardar(nuevaNota);
            return Response.status(Response.Status.CREATED).entity(nuevaNota).build();
        } else {
            return Response.status(Response.Status.BAD_REQUEST).entity("No se pudo registrar la nota").build();
        }
    }
}