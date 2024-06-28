<%@page import="java.text.NumberFormat"%>
<%@page import="java.util.Locale"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous"/>
        <title>JSP Page</title>
    </head>
    <body>
        <h2 class="mt-5 text-center">Simulador de credito libre inversion</h2>
        <div class="container" mt-5>
            <div class ="row">
                <div class="col-sm">
                    <form action="creditoLI.jsp" method="post">

                        <div>
                            <label><b>Dijite el monto del prestamo:</b></label>
                            <input type="text" class="form-control" name="monto" placeholder="Cantidad en pesos">
                        </div></br>
                        <div>
                            <label><b>Selecione el plazo</b></label>
                            <select class="form-select" name="plazo" id="plazo">
                                <option value="12">12</option>
                                <option value="24">24</option>
                                <option value="36">36</option>
                                <option value="48">48</option>
                                <option value="60">60</option>
                                <option value="72">72</option>
                                <option value="84">84</option>
                                <option value="96">96</option>
                                <option value="108">108</option>
                                <option value="120">120</option>
                            </select>
                        </div></br>
                        <div>
                            <label><b>Dijite la tasa de interes anual:</b></label>
                            <input type="text" class="form-control" name="tasa" id="tasa" placeholder="Verifique y digite">
                        </div></br>
                        <button type="text" class="btn btn-primary">Calcular</button>
                        <button type="reset" class="btn btn-secondary">Limpiar</button></br>
                    </form>
                    <table class="table table-striped mt-4">
                        <thead>
                            <tr>
                                <th scope="col"><b>N° cuota</b></th>
                                <th scope="col"><b>Cuota Mensual</b></th>
                                <th scope="col"><b>Abono a Capital</b></th>
                                <th scope="col"><b>Abono a Intereses</b></th>
                                <th scope="col"><b>Saldo</b></th>
                            </tr>
                        </thead>
                        <tbody>
                            <%
                                try {
                                    int monto = Integer.parseInt(request.getParameter("monto"));
                                    int plazo = Integer.parseInt(request.getParameter("plazo"));
                                    String tas = request.getParameter("tasa");
                                    double tasa = Double.parseDouble(tas);
                                    NumberFormat nf = NumberFormat.getCurrencyInstance();
                                    nf = NumberFormat.getCurrencyInstance(new Locale("es", "CO"));

                                    if (monto >= 1000000 && monto <= 25000000) {
                                        double interesMensual = tasa / 12 / 100;
                                        double cuotaMensual = monto * interesMensual / (1 - Math.pow(1 + interesMensual, -plazo));
                                        double saldo = monto;
                                        for (int i = 1; i <= plazo; i++) {
                                            double intereses = saldo * interesMensual;
                                            double abonoCapital = cuotaMensual - intereses;
                                            saldo -= abonoCapital;
                            %>
                            <tr>
                                <th scope="row"><%= i%></th>
                                <td><%= nf.format(cuotaMensual)%></td> 
                                <td><%= nf.format(abonoCapital)%></td>
                                <td><%= nf.format(intereses)%></td>
                                <td><%= nf.format(saldo)%></td>
                            </tr>
                            <%
                                        }
                                    } else {
                                        out.print("<tr><td colspan='5'>No cumple con las condiciones del préstamo</td></tr>");
                                    }
                                } catch (NumberFormatException e) {
                                    out.print("<tr><td colspan='5'>Los valores ingresados no son válidos</td></tr>");
                                }
                            %>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>


        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
    </body>
</html>
