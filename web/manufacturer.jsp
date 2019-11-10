<%-- 
    Document   : customers
    Created on : 04/11/2019, 21:29:11
    Author     : a
--%>

<%@page import="br.com.fatecpg.db.Manufacturer"%>
<%@page import="br.com.fatecpg.db.Customer"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Fabricantes</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <link rel="stylesheet" href="css/estilo.css">
    </head>
    <body>
        <%@include file="WEB-INF/jspf/navbar.jspf" %>
        <div class="container">
                <h2>Fabricantes</h2>
                <table class="table table-striped table-dark">
                    <thead>
                        <tr>
                            <th>Índice</th>
                            <th>ID</th>
                            <th>Nome</th>
                            <th>E-mail</th>
                            <th>Estado</th>
                            <th>Cidade</th>
                            <th>Ver Produtos</th>
                        </tr>
                    </thead>
                    <%try{%>

                        <% for (int i = 0; i<Manufacturer.getList().size(); i++){%>
                        <%Manufacturer m = Manufacturer.getList().get(i);%>
                        <tr>
                            <td><%=i+1%></td>
                            <td><%= m.getId()%></td>
                            <td><%= m.getName()%></td>
                            <td><%= m.getEmail()%></td>
                            <td><%= m.getState()%></td>
                            <td><%= m.getCity()%></td>
                            <td><a href="manufacturerProduct.jsp?i=<%=m.getId()%>">Ver pedidos</a></td>
                        </tr>
                        <%}%>
                        <% } catch (Exception e ) { %>
                        <tr><td colspan="3"><%= e.getMessage() %></td></tr>
                        <% } %>
                </table>
        </div>
    </body>
</html>
