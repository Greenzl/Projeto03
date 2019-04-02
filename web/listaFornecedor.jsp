<%-- 
    Document   : listaFornecedor
    Created on : 02/04/2019, 10:08:41
    Author     : User
--%>

<%@page import="br.com.projeto3.cadastro.Bd"%>
<%@page import="br.com.projeto3.cadastro.Fornecedores"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%@include file="WEB-INF/jspf/head.jspf" %>
        <h1>Lista Fornecedor</h1>
        <%@include file="WEB-INF/jspf/menu.jspf" %>
        <br>

        <table border="1" style="width: 100%">
            <tr>
                <td>#ID</td>
                <td>Nome</td>
                <td>Razão Social</td>
                <td>CNPJ</td>
                <td>Email</td>
                <td>Telefone</td>
                <td>Endereço</td>
                <td>Editar</td>
                <td>Excluir</td>
                <td>Adicionar</td>
                
            </tr>
            <% for (Fornecedores fornecedor : Bd.getFornecedores()) {
                int id = Bd.getFornecedores().indexOf(fornecedor);%>
            <tr>
                <td><%=id %></td>
                <td><%=fornecedor.getNome()%></td>
                <td><%=fornecedor.getRazaoSocial()%></td>
                <td><%=fornecedor.getCnpj()%></td>
                <td><%=fornecedor.getEmail()%></td>
                <td><%=fornecedor.getTelefone()%></td>
                <td><%=fornecedor.getEndereco()%></td>
                <td><a href="alterarFornecedor.jsp?id=<%=id%>">Alterar</a></td>
                <td><a href="excluirFornecedor.jsp<%=id%>">Remover</a></td>
                <td><a href="adicionarFornecedor.jsp"<%=id%>">Adicionar</a></td>
            </tr>
            <%}%>
        </table>


        <%@include file="WEB-INF/jspf/foot.jspf" %>
    </body>
</html>