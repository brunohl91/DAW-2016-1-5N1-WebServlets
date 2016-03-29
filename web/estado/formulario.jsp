<%-- 
    Document   : formulario
    Created on : 28/03/2016, 20:42:12
    Author     : Bruno
--%>

<%@page import="br.edu.ifsul.dao.EstadoDAO"%>
<%@page contentType="text/html" pageEncoding="ISO-8859-1"%>
<jsp:useBean id="estadoDao" scope="session" type="EstadoDAO" />
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
        <title>Edição de Estados</title>
        <script>
            function doSalvar() {
                document.getElementById("acao").value = "salvar";
                document.getElementById("form").submit();
            }
            function doCancelar() {
                document.getElementById("acao").value = "cancelar";
                document.getElementById("form").submit();
            }
        </script>
    </head>
    <body>
        <h1>Edição de Estados</h1>
        <h2><%=estadoDao.getMensagem()%></h2>
        <form name="form" id="form" action="ServletEstado" method="POST">
            ID: <input type="text" name="id" value="<%= estadoDao.getObjetoSelecionado().getId() == null ? "" : estadoDao.getObjetoSelecionado().getId() %>" size="6" readonly />
            <br/>
            Nome: <input type="text" name="nome" value="<%= estadoDao.getObjetoSelecionado().getNome()== null ? "" : estadoDao.getObjetoSelecionado().getNome() %>" size="40" />
            <br/>
            UF <input type="text" name="uf" value="<%= estadoDao.getObjetoSelecionado().getUf()== null ? "" : estadoDao.getObjetoSelecionado().getUf() %>" size="2" />
            <br/>
            <input type="submit" value="Enviar" name="btnSalvar" onclick="doSalvar()" />
            <input type="submit" value="Cancelar" name="btnCancelar" onclick="doCancelar()" />
            <input type="hidden" name="acao" id="acao" value="" />
        </form>
    </body>
</html>
