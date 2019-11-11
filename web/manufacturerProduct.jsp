<%-- 
    Document   : manufacturerProduct
    Created on : 10/11/2019, 20:15:02
    Author     : Estudos
--%>
<%@page import="br.com.fatecpg.db.Products"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<% int id = Integer.parseInt(request.getParameter("i")); 
   String situacao; %>
<!DOCTYPE html>
<html>
    <head>
         <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Produtos por Fabricante</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <link rel="stylesheet" href="css/estilo.css">
        
    </head>
    <body>
         <%@include file="WEB-INF/jspf/navbar.jspf" %>
        <div class="container">
                <h2>Produtos do Fabricante nº <%= id%></h2>
                <table class="table table-striped table-dark">
                    <thead>
                        <tr>
                            <th>ID</th>
                            <th>Código</th>
                            <th>Descrição</th>
                            <th>Valor de Compra</th>
                            <th>Quantidade Disponível</th>
                            <th>Markup</th>
                            <th>Disponível</th>
                        </tr>
                    </thead>
                    <%try{%>

                        <% for (int i = 0; i<Products.getList(id).size(); i++){%>
                        <%Products p = Products.getList(id).get(i);%>
                        <tr>
                            <td><%= p.getId()%></td>
                            <td><%= p.getCodigo()%></td>
                            <td><%= p.getDescription()%></td>
                            <td><%= p.getValor()%></td>
                            <td><%= p.getHand()%></td>
                            <td><%= p.getMarkup()%></td>
                            
                            <% if (p.isAvailable()){ situacao = "Sim"; }else{ situacao = "Não"; }%>
                            <td><%= situacao%></td>
                        </tr>
                        <%}%>
                        <% } catch (Exception e ) { %>
                        <tr><td colspan="3"><%= e.getMessage() %></td></tr>
                        <% } %>
                </table>
        </div>
          <%@include file="WEB-INF/jspf/footer.jspf" %>
    </body>
</html>
