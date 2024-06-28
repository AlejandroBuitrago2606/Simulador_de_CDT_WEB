<%@page import="java.text.NumberFormat"%>
<%@page import="java.util.Locale"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <title>Cálculo de CDT</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>

<div class="container mt-5">
    <h2 class="text-center">Simulador de CDT</h2>
    <div class="row">
        <div class="col-sm">
            <form id="cdtForm">
                <div class="mb-3">
                    <label for="capital" class="form-label"><b>Capital inicial:</b></label>
                    <input type="number" class="form-control" id="capital" placeholder="Cantidad en pesos" required>
                </div>
                <div class="mb-3">
                    <label for="tasa" class="form-label"><b>Tasa de interés nominal anual (%):</b></label>
                    <input type="number" step="0.01" class="form-control" id="tasa" placeholder="Porcentaje de interés" required>
                </div>
                <div class="mb-3">
                    <label for="periodo" class="form-label"><b>Período de tiempo (años):</b></label>
                    <input type="number" class="form-control" id="periodo" placeholder="Duración del CDT en años" required>
                </div>
                <div class="mb-3">
                    <label for="periodoitem" class="form-label"><b>Número de periodos de capitalización por año:</b></label>
                    <select class="form-select" id="periodoitem" required>
                        <option value="24">Quincenal</option>
                        <option value="12">Mensual</option>
                        <option value="2">Semestral</option>
                        <option value="1">Anual</option>
                    </select>
                </div>
                <button type="submit" class="btn btn-primary" style="width: 100%">Calcular</button>
                <button type="reset" class="btn btn-secondary mt-3" style="width: 100%">Limpiar</button>
            </form>
        </div>
    </div>
    <div class="row mt-5">
        <div class="col-sm">
            <table id="resultTable" class="table table-striped" style="display: none;">
                <thead>
                    <tr>
                        <th scope="col">CDT</th>
                        <th scope="col">Tasa de Interés A</th>
                        <th scope="col">Frecuencia</th>
                        <th scope="col">Período de Tiempo</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td id="cdtValue"></td>
                        <td id="tasaInteres"></td>
                        <td id="frecuencia"></td>
                        <td id="periodoTiempo"></td>
                    </tr>
                </tbody>
            </table>
        </div>
    </div>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"></script>
<script>
    document.getElementById('cdtForm').addEventListener('submit', function(event) {
        event.preventDefault(); // Evitar que el formulario se envíe

        // Obtener valores del formulario
        let capital = parseFloat(document.getElementById('capital').value);
        let tasa = parseFloat(document.getElementById('tasa').value) / 100; // Convertir a decimal
        let periodo = parseInt(document.getElementById('periodo').value);
        let frecuencia = parseInt(document.getElementById('periodoitem').value);

        // Calcular el valor del CDT
        let cdt = 0;
        switch (frecuencia) {
            case 24: // Quincenal
                cdt = capital * Math.pow((1 + (tasa / 24)), (24 * periodo));
                break;
            case 12: // Mensual
                cdt = capital * Math.pow((1 + (tasa / 12)), (12 * periodo));
                break;
            case 2: // Semestral
                cdt = capital * Math.pow((1 + (tasa / 2)), (2 * periodo));
                break;
            case 1: // Anual
                cdt = capital * Math.pow((1 + (tasa / 1)), (1 * periodo));
                break;
            default:
                cdt = 0;
        }

        // Mostrar resultados
        document.getElementById('cdtValue').textContent = cdt.toLocaleString('es-CO', { style: 'currency', currency: 'COP' });
        document.getElementById('tasaInteres').textContent = (tasa * 100).toFixed(2) + '%';
        document.getElementById('frecuencia').textContent = frecuencia === 1 ? 'Anual' : (frecuencia === 2 ? 'Semestral' : (frecuencia === 12 ? 'Mensual' : 'Quincenal'));
        document.getElementById('periodoTiempo').textContent = periodo + ' años';

        // Mostrar tabla de resultados
        document.getElementById('resultTable').style.display = 'table';
    });
</script>

</body>
</html>

