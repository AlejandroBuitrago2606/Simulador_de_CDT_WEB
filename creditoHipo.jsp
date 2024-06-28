<%@page import="java.text.NumberFormat"%>
<%@page import="java.util.Locale"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Cálculo de Préstamo Hipotecario</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css">
</head>
<body>

<div class="container mt-5">
    <h2 class="text-center">Simulador de Crédito Hipotecario</h2>
    <div class="row">
        <div class="col-sm">
            <form id="calcForm">
                <div class="mb-3">
                    <label for="costo" class="form-label">Costo total de la propiedad:</label>
                    <input type="number" class="form-control" id="costo" placeholder="Cantidad en pesos" required>
                </div>
                <div class="mb-3">
                    <label for="montoinicial" class="form-label">Pago inicial:</label>
                    <input type="number" class="form-control" id="montoinicial" placeholder="Cantidad en pesos" required>
                </div>
                <div class="mb-3">
                    <label for="plazo" class="form-label">Plazo del préstamo (años):</label>
                    <input type="number" class="form-control" id="plazo" placeholder="Plazo en años" required>
                </div>
                <div class="mb-3">
                    <label for="tasa" class="form-label">Tasa de interés anual (%):</label>
                    <input type="number" step="0.01" class="form-control" id="tasa" placeholder="Por ejemplo, 0.05%" required>
                </div>
                <div class="mb-3">
                    <label for="plazoitem" class="form-label">Frecuencia de pago:</label>
                    <select class="form-select" id="plazoitem" required>
                        <option value="">Selecciona</option>
                        <option value="Mensualmente">Mensualmente</option>
                        <option value="Quincenalmente">Quincenalmente</option>
                        <option value="Semestralmente">Semestralmente</option>
                        <option value="Anualmente">Anualmente</option>
                    </select>
                </div>
                <button type="submit" class="btn btn-primary">Calcular</button>
                <button type="reset" class="btn btn-secondary">Limpiar</button>
            </form>
        </div>
    </div>
    <div class="row mt-5">
        <div class="col-sm">
            <table id="resultTable" class="table table-striped" style="display: none;">
                <thead>
                    <tr>
                        <th scope="col">Monto del préstamo</th>
                        <th scope="col">Plazo del préstamo</th>
                        <th scope="col">Tasa de Interés A</th>
                        <th scope="col">Frecuencia</th>
                        <th scope="col">Número de pagos</th>
                        <th scope="col">Valor del pago</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td id="totalPrestamo"></td>
                        <td id="plazoPrestamo"></td>
                        <td id="tasaInteres"></td>
                        <td id="frecuenciaPago"></td>
                        <td id="numPagos"></td>
                        <td id="valorPago"></td>
                    </tr>
                </tbody>
            </table>
        </div>
    </div>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"></script>
<script>
    document.getElementById('calcForm').addEventListener('submit', function(event) {
        event.preventDefault(); // Evita que el formulario se envíe

        // Obtener valores del formulario
        let costo = parseFloat(document.getElementById('costo').value);
        let montoinicial = parseFloat(document.getElementById('montoinicial').value);
        let plazoA = parseInt(document.getElementById('plazo').value);
        let tasa = parseFloat(document.getElementById('tasa').value) / 100; // Convertir a decimal
        let plazo = document.getElementById('plazoitem').value;

        // Calcular el monto del préstamo
        let totalPrestamo = costo - montoinicial;

        // Calcular el número total de pagos
        let totalp;
        switch (plazo) {
            case "Mensualmente":
                totalp = plazoA * 12;
                break;
            case "Quincenalmente":
                totalp = plazoA * 26;
                break;
            case "Semestralmente":
                totalp = plazoA * 2;
                break;
            case "Anualmente":
                totalp = plazoA;
                break;
            default:
                totalp = 0;
        }

        // Calcular el valor del pago
        let pago;
        switch (plazo) {
            case "Mensualmente":
                pago = totalPrestamo * ((tasa / 12) * (1 + Math.pow((tasa / 12), totalp)) / (Math.pow((1 + (tasa / 12)), totalp) - 1));
                break;
            case "Quincenalmente":
                pago = totalPrestamo * ((tasa / 24) * (1 + Math.pow((tasa / 24), totalp)) / (Math.pow((1 + (tasa / 24)), totalp) - 1));
                break;
            case "Semestralmente":
                pago = totalPrestamo * ((tasa / 2) * (1 + Math.pow((tasa / 2), totalp)) / (Math.pow((1 + (tasa / 2)), totalp) - 1));
                break;
            case "Anualmente":
                pago = totalPrestamo * ((tasa) * (1 + Math.pow((tasa), totalp)) / (Math.pow((1 + (tasa)), totalp) - 1));
                break;
            default:
                pago = 0;
        }

        // Mostrar resultados
        document.getElementById('totalPrestamo').textContent = totalPrestamo.toFixed(2);
        document.getElementById('plazoPrestamo').textContent = plazoA + ' años';
        document.getElementById('tasaInteres').textContent = (tasa * 100).toFixed(2) + '%';
        document.getElementById('frecuenciaPago').textContent = plazo;
        document.getElementById('numPagos').textContent = totalp;
        document.getElementById('valorPago').textContent = pago.toFixed(2);

        // Mostrar tabla de resultados
        document.getElementById('resultTable').style.display = 'table';
    });
</script>

</body>
</html>

