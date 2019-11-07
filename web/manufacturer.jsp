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
        <title>Fabricantes - JavaDB</title>
    </head>
    <body>
        <%@include file="WEB-INF/jspf/navbar.jspf" %>
        <h1>Fabricantes</h1>
        <table border="1">
            <tr>
                <th>Índice</th>
                <th>ID</th>
                <th>Nome</th>
                <th>E-mail</th>
                <th>Estado</th>
                <th>Cidade</th>
            </tr>
            <%try{%>
            
                <% for (int i = 0; i<Manufacturer.getList().size(); i++){%>
                <%Manufacturer m = Manufacturer.getList().get(i);%>
                <tr>
                    <td scope="row"><%=i+1%></td>
                    <td><%= m.getId()%></td>
                    <td><%= m.getName()%></td>
                    <td><%= m.getEmail()%></td>
                    <td><%= m.getState()%></td>
                    <td><%= m.getCity()%></td>
                </tr>
                <%}%>
                <% } catch (Exception e ) { %>
                <tr><td colspan="3"><%= e.getMessage() %></td></tr>
                <% } %>
        </table>
    </body>
</html>
