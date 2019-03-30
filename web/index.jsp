<%-- 
    Document   : index
    Created on : 29/03/2019, 11:01:22
    Author     : Soryu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Lista de Cadastros</title>
    </head>
    <body>
        <h1>Selecione o cadastro que deseja consultar!</h1>
        <select name="tipo">
            <option value="cliente"><a href="listaCliente.jsp">Clientes</a></option>
            <option value="fornecedor"><a href="listaFornecedor.jsp"">Fornecedores</a></option>
        </select>
    </body>
</html>
