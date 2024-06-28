<%-- 
    Document   : login
    Created on : 11/06/2024, 8:10:21 a. m.
    Author     : PC_03 ADSO
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
        <style>
            .cont {
                display: flex;
                justify-content: center;
                align-items: center;
                height: 100vh;
            }
            .input-container {
                width: 50%;
                text-align: center;
            }

            .label {
                width: 100%;
                text-align: left;
            }

            input {
                width: 50%;
                max-width: 300px;
                padding: 10px;
            }

            .box{
                width: 350px;
                padding: 50px;
                border: 2px;
                border-radius: 10px;
                background-color: #009999;
                text-align: center;
                margin: 0 auto;
            }

            .box h2 {

                margin-top: 0;
            }
            body {
                background-image: url("imagen/finan.jpg");
                background-size: cover;
                background-position: center;
            }
            
            titulo{
                color: #cccccc;
                
            }
        </style>
    </head>
    <body>
        </br>
        </br>
        <form action="validacion.jsp" method="post">
            <div class="container">
                <h4 class="text-center">Calcula tu camino hacia un futuro financiero sólido con nuestro Calculador de CDT</h4>
                </br>
                </br>
                </br>
                </br>
                </br>
                </br>
                <div class="box">
                    <h2>Iniciar Sesion</h2>
                    </br>
                    </br>
                    <div class="mb-4" >
                        <label for="login" class="label"><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="icon icon-tabler icons-tabler-outline icon-tabler-user">
                            <path stroke="none" d="M0 0h24v24H0z" fill="none" />
                            <path d="M8 7a4 4 0 1 0 8 0a4 4 0 0 0 -8 0" />
                            <path d="M6 21v-2a4 4 0 0 1 4 -4h4a4 4 0 0 1 4 4v2" />
                            </svg>Usuario
                        </label>
                        <input type="text" class="form-control" id="login" name="user" placeholder="Ingresa tu nombre" required>
                    </div>
                    <div class="mb-4">
                        <label for="login" class="label"><svg  xmlns="http://www.w3.org/2000/svg"  width="24"  height="24"  viewBox="0 0 24 24"  fill="none"  stroke="currentColor"  stroke-width="2"  stroke-linecap="round"  stroke-linejoin="round"  class="icon icon-tabler icons-tabler-outline icon-tabler-key">
                            <path stroke="none" d="M0 0h24v24H0z" fill="none"/>
                            <path d="M16.555 3.843l3.602 3.602a2.877 2.877 0 0 1 0 4.069l-2.643 2.643a2.877 2.877 0 0 1 -4.069 0l-.301 -.301l-6.558 6.558a2 2 0 0 1 -1.239 .578l-.175 .008h-1.172a1 1 0 0 1 -.993 -.883l-.007 -.117v-1.172a2 2 0 0 1 .467 -1.284l.119 -.13l.414 -.414h2v-2h2v-2l2.144 -2.144l-.301 -.301a2.877 2.877 0 0 1 0 -4.069l2.643 -2.643a2.877 2.877 0 0 1 4.069 0z" />
                            <path d="M15 9h.01" />
                            </svg>Contrasena</label>
                        <input type="password" class="form-control" id="login" name="password" placeholder="Ingresa tu contrasena" required>
                    </div>
                    <button type="submit" class="btn btn-primary">Ingresar</button>
                </div>
                </br>
                </br>
                </br>
                </br>
                </br>
                </br>
            </div>
            <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js" integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r" crossorigin="anonymous"></script>
            <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.min.js" integrity="sha384-0pUGZvbkm6XF6gxjEnlmuGrJXVbNuzT9qBBavbLwCsOGabYfZo0T0to5eqruptLy" crossorigin="anonymous"></script>
        </form>    
    </body>
</html>