<%-- 
    Document   : listar
    Created on : 28/03/2016, 20:26:08
    Author     : Bruno
--%>

<%@page import="br.edu.ifsul.modelo.Estado"%>
<%@page import="br.edu.ifsul.dao.EstadoDAO"%>
<%@page contentType="text/html" pageEncoding="ISO-8859-1"%>
<jsp:useBean id="estadoDao" scope="session" type="EstadoDAO" />
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
        <title>Listagem de Estados</title>
    </head>
    <body>
        <a href="../index.html">Início</a>
        <h1>Listagem de Estados</h1>
        <h2><%=estadoDao.getMensagem()%></h2>
        <a href=ServletEstado?acao=incluir">Incluir</a>
        <table border="1">
            <thead>
                <tr>
                    <th>ID</th>
                    <th>Nome</th>
                    <th>UF</th>
                    <th>Alterar</th>
                    <th>Excluir</th>
                </tr>
            </thead>
            <tbody>
                <%
                    for (Estado e: estadoDao.getLista()) {
                %>
                <tr>
                    <td><%=e.getId()%></td>
                    <td><%=e.getNome()%></td>
                    <td><%=e.getUf()%></td>
                    <td><a href="ServletEstado?acao=alterar&id=<%=e.getId()%>">Alterar</a></td>
                    <td><a href="ServletEstado?acao=excluir&id=<%=e.getId()%>">Excluir</a></td>
                </tr>
                <%
                    }
                %>
            </tbody>
        </table>
    </body>
</html>
