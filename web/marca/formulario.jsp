<%-- 
    Document   : formulario
    Created on : 28/03/2016, 20:42:12
    Author     : Bruno
--%>

<%@page import="br.edu.ifsul.dao.MarcaDAO"%>
<%@page contentType="text/html" pageEncoding="ISO-8859-1"%>
<jsp:useBean id="marcaDao" scope="session" type="MarcaDAO" />
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
        <title>Edição de Marcas</title>
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
        <h1>Edição de Marcas</h1>
        <h2><%=marcaDao.getMensagem()%></h2>
        <form name="form" id="form" action="ServletMarca" method="POST">
            ID: <input type="text" name="id" value="<%= marcaDao.getObjetoSelecionado().getId() == null ? "" : marcaDao.getObjetoSelecionado().getId() %>" size="6" readonly />
            <br/>
            Nome: <input type="text" name="nome" value="<%= marcaDao.getObjetoSelecionado().getNome()== null ? "" : marcaDao.getObjetoSelecionado().getNome() %>" size="40" />
            <br/>
            <input type="submit" value="Enviar" name="btnSalvar" onclick="doSalvar()" />
            <input type="submit" value="Cancelar" name="btnCancelar" onclick="doCancelar()" />
            <input type="hidden" name="acao" id="acao" value="" />
        </form>
    </body>
</html>
