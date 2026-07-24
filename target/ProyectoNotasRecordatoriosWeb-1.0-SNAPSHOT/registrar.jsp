<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Registrar Nota</title>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
</head>

<body class="bg-light">

<div class="container mt-5">

    <div class="card shadow">

        <div class="card-header bg-success text-white">
            <h2>Registrar Nueva Nota</h2>
        </div>

        <div class="card-body">

            <form action="NotaServlet" method="post">

                <div class="mb-3">
                    <label class="form-label">Título</label>

                    <input
                        type="text"
                        name="titulo"
                        class="form-control"
                        required>
                </div>

                <div class="mb-3">

                    <label class="form-label">
                        Descripción
                    </label>

                    <textarea
                        name="descripcion"
                        class="form-control"
                        rows="4"
                        required></textarea>

                </div>

                <div class="mb-3">

                    <label class="form-label">
                        Fecha
                    </label>

                    <input
                        type="date"
                        name="fecha"
                        class="form-control">

                </div>

                <div class="mb-3">

                    <label class="form-label">
                        Recordatorio
                    </label>

                    <select
                        name="recordatorio"
                        class="form-select">

                        <option value="Si">Sí</option>
                        <option value="No">No</option>

                    </select>

                </div>

                <button
                    type="submit"
                    class="btn btn-success">

                    Guardar Nota

                </button>

                <a href="index.jsp"
                   class="btn btn-secondary">

                    Volver

                </a>

            </form>

        </div>

    </div>

</div>

</body>
</html>