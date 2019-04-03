<%@page import="br.com.projeto3.cadastro.Bd"%>
<%@page import="br.com.projeto3.cadastro.Clientes"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
        <title>JSP Page</title>
    </head>
    <body>
        <%@include file="WEB-INF/jspf/head.jspf" %>
        <h1>Lista Cliente</h1>
        <%@include file="WEB-INF/jspf/menu.jspf" %>
        <br>

        <table class="table" border="1" style="width: 100%">
            <tr>
                <td>#ID</td>
                <td>Nome</td>
                <td>CPF</td>
                <td>RG</td>
                <td>Email</td>
                <td>Telefone</td>
                <td>Endereço</td>
                <td>Editar</td>
                <td>Excluir</td>
                <td>adicionar</td>
            </tr>
            <% for (Clientes c : Bd.getClientes()) {
                    int id = Bd.getClientes().indexOf(c);%>
            <tr>
                <td><%=id%></td>
                <td><%=c.getNome()%></td>
                <td><%=c.getCpf()%></td>
                <td><%=c.getRg()%></td>
                <td><%=c.getEmail()%></td>
                <td><%=c.getTelefone()%></td>
                <td><%=c.getEndereco()%></td>
                <td><a href="alterarCliente.jsp?id=<%=id%>">Alterar</a></td>
                <td><a href="excluir.jsp?id=<%=id%>">Remover</a></td>
                <td><a href="adicionarCliente.jsp"<%=id%>">Adicionar</a></td>
            </tr>
            <%}%>
        </table>

        <%@include file="WEB-INF/jspf/foot.jspf" %>
    </body>
</html>
