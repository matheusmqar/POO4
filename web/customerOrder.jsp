
<%@page import="br.com.fatecpg.db.Order"%>
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
             <%  if (request.getParameter("i")!=null & request.getParameter("i") != "") {
                    int id = Integer.parseInt(request.getParameter("i")); %>
             
                <h2>Pedidos do Clientes N° <%= id%></h2>
                <table class="table table-striped table-dark">
                    <thead>
                        <tr>
                            <th>N° do Pedido</th>
                            <th>Quantidade</th>
                            <th>Custo do Frete</th>
                            <th>Data da Venda</th>
                            <th>Data do Envio</th>
                            <th>Empresa Transportadora</th>
                        </tr>
                    </thead>
                    <%try{%>

                    <% for (int i = 0; i<Order.getList(id).size(); i++){%>
                        <% Order o = Order.getList(id).get(i);%>
                        <tr>
                            <td><%= o.getNum()%></td>
                            <td><%= o.getQuantity()%></td>
                            <td><%= o.getShippingCost()%></td>
                            <td><%= o.getSalesDate()%></td>
                            <td><%= o.getShippingDate()%></td>
                            <td><%= o.getFreightCompany()%></td>
             
                        </tr>
                        <%}%>
                        <% } catch (Exception e ) { %>
                        <tr><td colspan="3"><%= e.getMessage() %></td></tr>
                        <% } %>
                </table>
                
                <% } else { %>
                <h2> É preciso informar o índice do pedido! </h2>
                <%}%>
         </div>
         <%@include file="WEB-INF/jspf/footer.jspf" %>
    </body>
</html>
