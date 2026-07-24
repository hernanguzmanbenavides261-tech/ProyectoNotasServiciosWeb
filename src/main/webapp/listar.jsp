<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.List"%>
<%@page import="com.hernan.notas.modelo.Nota"%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Listado de Notas</title>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
</head>

<body class="bg-light">

<div class="container mt-5">

    <div class="card shadow">

        <div class="card-header bg-primary text-white text-center">
            <h2>Sistema de Notas y Recordatorios</h2>
            <h5>Listado de Notas</h5>
        </div>

        <div class="card-body">

            <table class="table table-bordered table-striped">

                <thead>
                    <tr>
                        <th>Título</th>
                        <th>Descripción</th>
                        <th>Fecha</th>
                        <th>Recordatorio</th>
                        <th>Acciones</th>
                    </tr>
                </thead>

                <tbody>

                <%
                    List<Nota> lista = (List<Nota>) request.getAttribute("listaNotas");

                    if (lista != null) {
                        for (Nota nota : lista) {
                %>

                    <tr>
                        <td><%= nota.getTitulo() %></td>
                        <td><%= nota.getDescripcion() %></td>
                        <td><%= nota.getFecha() %></td>
                        <td><%= nota.getRecordatorio() %></td>
                        <td>
                            <button class="btn btn-warning btn-sm">
                                Editar
                            </button>

                            <button class="btn btn-danger btn-sm">
                                Eliminar
                            </button>
                        </td>
                    </tr>

                <%
                        }
                    }
                %>

                </tbody>

            </table>

            <div class="mt-3">

                <a href="index.jsp" class="btn btn-primary">
                    Inicio
                </a>

                <a href="registrar.jsp" class="btn btn-success">
                    Nueva Nota
                </a>

            </div>

        </div>

    </div>

</div>

</body>
</html>