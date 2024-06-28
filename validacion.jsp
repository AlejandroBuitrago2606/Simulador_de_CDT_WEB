<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous"/>
        <title>JSP Page</title>
        <style>
        body {
            background-image: url(error.png);
            background-size: cover;
            background-repeat: no-repeat;
            background-attachment: fixed;
            color: black;
        }
    </style>
    </head>
    <body>
        <%
            //comprueba las credenciales
            String username = request.getParameter("user");
            String pass = request.getParameter("password");
            if (username != null && pass != null) {
                     if (username.equals("admin") && pass.equals("1234")) {
                response.sendRedirect("inicio.jsp");
            } else {
            
                out.print("<dic class='alert alert-danger text-center'>Usuario o Clave Incorrectos</div>");
            }
                }
           
             else {
                     out.print("<dic class='alert alert-danger text-center'>Por favor ingrese su usuario y contraseña</div>");
                    
            }
        %>
        
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
    </body>
</html>
