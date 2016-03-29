<%-- 
    Document   : listar
    Created on : 28/03/2016, 20:23:04
    Author     : Bruno
--%>

<%@page import="br.edu.ifsul.modelo.Marca"%>
<%@page import="br.edu.ifsul.dao.MarcaDAO"%>
<%@page contentType="text/html" pageEncoding="ISO-8859-1"%>
<jsp:useBean id="marcaDao" scope="session" type="MarcaDAO"/>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
        <title>Listagem de Marcas</title>
    </head>
    <body>
        <a href="../index.html">Início</a>
        <h1>Listagem de Marcas</h1>
        <h2><%=marcaDao.getMensagem()%></h2>
        <a href="ServletMarca?acao=incluir">Incluir</a>
        <table border="1">
            <thead>
                <tr>
                    <th>ID</th>
                    <th>Nome</th>
                    <th>Alterar</th>
                    <th>Excluir</th>
                </tr>
            </thead>
            <tbody>
                <%
                    for (Marca e : marcaDao.getLista()) {
                %>
                <tr>
                    <td><%=e.getId()%></td>
                    <td><%=e.getNome()%></td>
                    <td><a href="ServletMarca?acao=alterar&id=<%=e.getId()%>">Alterar</a></td>
                    <td><a href="ServletMarca?acao=excluir&id=<%=e.getId()%>">Excluir</a></td>
                </tr>
                <%
                    }
                %>
            </tbody>            
        </table>
    </body>
</html>