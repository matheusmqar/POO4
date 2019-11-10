
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Pedidos - Clientes</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <link rel="stylesheet" href="css/estilo.css">
    </head>
    <body>
         <%@include file="WEB-INF/jspf/navbar.jspf" %>
         <div class="container">
                <h2>Pedidos - Clientes</h2>
                <% if (request.getParameter("i")==null){%>
                <div> É preciso informar o índice do pedido </div>
                <% } else { %>
                Oi <% i %>
                <%}%>
         </div>
    </body>
</html>
