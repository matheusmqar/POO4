<%-- 
    Document   : customers
    Created on : 04/11/2019, 21:29:11
    Author     : a
--%>

<%@page import="br.com.fatecpg.db.Customer"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Clientes - JavaDB</title>
    </head>
    <body>
        <%@include file="WEB-INF/jspf/navbar.jspf" %>
        <div class="container">
            <h1>Clientes</h1>
            <table class="table table-striped table-dark">
                <thead>
                    <tr>
                        <th>Índice</th>
                        <th>ID</th>
                        <th>Nome</th>
                        <th>E-mail</th>
                    </tr>
                </thead>
                <%try{%>
                    <tbody>

                    <% for (int i = 0; i<Customer.getList().size(); i++){%>
                        <%Customer c= Customer.getList().get(i);%>
                        <tr>
                            <td scope="row"><%=i+1%></td>
                            <td> <%= c.getId()%></td>
                            <td><%= c.getName()%></td>
                            <td><%= c.getEmail()%></td>
                        </tr>
                    <%}%>
                    </tbody>
                    <% } catch (Exception e ) { %>
                    <tr><td colspan="3"><%= e.getMessage() %></td></tr>
                    <% } %>
            </table>
        </div>
    </body>
</html>
