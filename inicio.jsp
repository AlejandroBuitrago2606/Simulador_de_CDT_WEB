bloc<%-- 
    Document   : inicio
    Created on : 11/06/2024, 8:22:02 a. m.
    Author     : PC_03 ADSO
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Inicio</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
        <style>
            .carrusel-container {
                max-width: 650px; /* Ajusta el valor de max-width según sea necesario */
                margin-left: 100px;
            }

            .box {
                width: 920px;
                height: 600px;
                padding: 20px;
                border-radius: 10px;
                text-align: center;
                background-color: #009688; /* Cambia el color de fondo de la caja */
                color: white; /* Cambia el color del texto dentro de la caja */
                margin-top: 30px;
            }

            .carousel-item img {
                border-radius: 15px; /* Agrega bordes redondos */
            }
            h2{
                text-align: center;
            }

            body {

            }

            ul {
                list-style-type: none;
                margin: 0;
                padding: 0;
                width: 350px;
                background-color: #f1f1f1;
                position: fixed;
                top: 0; /* Posiciona el menú en la parte superior */
                left: 0; /* Alinea el menú a la izquierda */
                height: 100%; /* Ocupa toda la altura del viewport */
                overflow: auto;
                border-radius: 10px; /* Redondea los bordes del menú */
            }

            li a {
                display: block;
                color: #009999;
                padding: 8px 16px;
                text-decoration: none;
                border-radius: 10px; /* Redondea los bordes de los botones */
                margin-bottom: 5px; /* Agrega espacio entre los botones */
            }

            li a.active {
                background-color: #04AA6D;
                color: white;
            }

            li a:hover:not(.active) {
                background-color: #0066cc;
                color: white;
            }
            h3{
                color: #009999;

            }
            h6{
                color: #009999;

            }

            .box2 {
                width: 350px;
                padding: 50px;
                border: 2px;
                border-radius: 10px;
                background-color: #006699;
                margin: 0 auto;
            }





            body {
                margin: 0;
                padding-top: 50px; /* Ajusta el espacio para evitar que el menú se superponga al contenido */
                background-image: url('imagen/inicio.jpg');
                background-size: cover;
                background-position: center;
            }

            ul {
                list-style-type: none;
                margin: 0;
                padding: 0;
                width: 300px;
                background-color: #f1f1f1;
                position: fixed;
                height: 100%;
                overflow: auto;
            }

            li a {
                display: block;
                color: #000;
                padding: 8px 16px;
                text-decoration: none;
            }

            li a.active {
                background-color: #04AA6D;
                color: white;
            }

            li a:hover:not(.active) {
                background-color: #555;
                color: white;
            }
        </style>
    </head>
    <body>
        <div>
            <div class="container" style="margin-right: 45px;">
                <div class="container mx-auto">
                    <div class="carrusel-container"> <!-- Agregado: Clase mx-auto para centrar -->
                        <div id="carouselExampleIndicators" class="carousel slide" data-bs-ride="carousel" style="margin-left: 100px">
                            <div class="carousel-indicators">
                                <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
                                <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="1" aria-label="Slide 2"></button>
                                <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="2" aria-label="Slide 3"></button>
                            </div>
                            <div class="carousel-inner">
                                <div class="carousel-item active">
                                    <img src="imagen/finanzas1.webp" class="d-block w-100" alt="...">
                                </div>
                                <div class="carousel-item">
                                    <img src="imagen/finanzas2.webp" class="d-block w-100" alt="...">
                                </div>
                                <div class="carousel-item">
                                    <img src="imagen/finanzas3.webp" class="d-block w-100" alt="...">
                                </div>
                            </div>
                            <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="prev">
                                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                                <span class="visually-hidden">Previous</span>
                            </button>
                            <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="next">
                                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                                <span class="visually-hidden">Next</span>
                            </button>
                        </div>
                    </div>
                </div>
            </div>
            </br>
            <div class="container" style="margin-left: 5px;">
                <ul>
                    <li><a class="active" href="#Menu" id="item">Menu</a></li>
                    <li><a href="#" onclick="mostrarContenido('creditoLI.jsp')">Simulador CLI</a></li>
                    <li><a href="#" onclick="mostrarContenido('creditoHipo.jsp'")>Simulador Credito H</a></li>
                                
                    <li><a href="#" onclick="mostrarContenido('cdt.jsp')">Simulador CDT</a></li>
                    <li><a href="#"id="item">Experiencia de Usuario</a></li>
                    <!-- Agregado: Elementos de contacto -->
                    </br>
                    </br>
                    </br>
                    </br>
                    </br>
                    </br>
                    </br>
                    </br>
                    </br>
                    </br>
                    </br>
                    </br>
                    </br>
                    </br>
                    </br>
                    </br>
                    </br>
                    </br>
                    </br>
                    </br>
                    </br>
                    </br>

                    <h3>Contactenos: </h3>
                    <h6><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-telephone-inbound" viewBox="0 0 16 16">
                        <path d="M15.854.146a.5.5 0 0 1 0 .708L11.707 5H14.5a.5.5 0 0 1 0 1h-4a.5.5 0 0 1-.5-.5v-4a.5.5 0 0 1 1 0v2.793L15.146.146a.5.5 0 0 1 .708 0m-12.2 1.182a.678.678 0 0 0-1.015-.063L1.605 2.3c-.483.484-.661 1.169-.45 1.77a17.6 17.6 0 0 0 4.168 6.608 17.6 17.6 0 0 0 6.608 4.168c.601.211 1.286.033 1.77-.45l1.034-1.034a.678.678 0 0 0-.063-1.015l-2.307-1.794a.68.68 0 0 0-.58-.122l-2.19.547a1.75 1.75 0 0 1-1.657-.459L5.482 8.062a1.75 1.75 0 0 1-.46-1.657l.548-2.19a.68.68 0 0 0-.122-.58zM1.884.511a1.745 1.745 0 0 1 2.612.163L6.29 2.98c.329.423.445.974.315 1.494l-.547 2.19a.68.68 0 0 0 .178.643l2.457 2.457a.68.68 0 0 0 .644.178l2.189-.547a1.75 1.75 0 0 1 1.494.315l2.306 1.794c.829.645.905 1.87.163 2.611l-1.034 1.034c-.74.74-1.846 1.065-2.877.702a18.6 18.6 0 0 1-7.01-4.42 18.6 18.6 0 0 1-4.42-7.009c-.362-1.03-.037-2.137.703-2.877z"/>
                        </svg>   Telefono: +573123456789</h6>
                    <h6><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-whatsapp" viewBox="0 0 16 16">
                        <path d="M13.601 2.326A7.85 7.85 0 0 0 7.994 0C3.627 0 .068 3.558.064 7.926c0 1.399.366 2.76 1.057 3.965L0 16l4.204-1.102a7.9 7.9 0 0 0 3.79.965h.004c4.368 0 7.926-3.558 7.93-7.93A7.9 7.9 0 0 0 13.6 2.326zM7.994 14.521a6.6 6.6 0 0 1-3.356-.92l-.24-.144-2.494.654.666-2.433-.156-.251a6.56 6.56 0 0 1-1.007-3.505c0-3.626 2.957-6.584 6.591-6.584a6.56 6.56 0 0 1 4.66 1.931 6.56 6.56 0 0 1 1.928 4.66c-.004 3.639-2.961 6.592-6.592 6.592m3.615-4.934c-.197-.099-1.17-.578-1.353-.646-.182-.065-.315-.099-.445.099-.133.197-.513.646-.627.775-.114.133-.232.148-.43.05-.197-.1-.836-.308-1.592-.985-.59-.525-.985-1.175-1.103-1.372-.114-.198-.011-.304.088-.403.087-.088.197-.232.296-.346.1-.114.133-.198.198-.33.065-.134.034-.248-.015-.347-.05-.099-.445-1.076-.612-1.47-.16-.389-.323-.335-.445-.34-.114-.007-.247-.007-.38-.007a.73.73 0 0 0-.529.247c-.182.198-.691.677-.691 1.654s.71 1.916.81 2.049c.098.133 1.394 2.132 3.383 2.992.47.205.84.326 1.129.418.475.152.904.129 1.246.08.38-.058 1.171-.48 1.338-.943.164-.464.164-.86.114-.943-.049-.084-.182-.133-.38-.232"/>
                        </svg>   Whatsapp: +573398765432</h6>
                    <h6><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-envelope-fill" viewBox="0 0 16 16">
                        <path d="M.05 3.555A2 2 0 0 1 2 2h12a2 2 0 0 1 1.95 1.555L8 8.414zM0 4.697v7.104l5.803-3.558zM6.761 8.83l-6.57 4.027A2 2 0 0 0 2 14h12a2 2 0 0 0 1.808-1.144l-6.57-4.027L8 9.586zm3.436-.586L16 11.801V4.697z"/>
                        </svg>   Correo Electronico: creditolibreInversion@gmail.com</h6>
                </ul>
            </div>
            <div class="container" style="margin-left: 400px">
                <div class="box2" style="
                     width: 1020px;
                     height: 800px;
                     margin: 100px;
                     " >
                    <h2>Menu</h2>
                    <div id="contenido" class="box">
                        <script>
                            function mostrarContenido(url) {
                                fetch(url)
                                        .then(response => response.text())
                                        .then(data => {
                                            document.getElementById('contenido').innerHTML = data;
                                        })
                                        .catch(error => console.error('Hubo un problema al cargar el contenido:', error));
                            }
                        </script>
                    </div>
                </div>
            </div>
            </br>
            <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
            <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>
        </div>
    </body>
</html>
