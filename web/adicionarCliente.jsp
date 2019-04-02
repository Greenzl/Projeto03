<%-- 
    Document   : adicionar
    Created on : 02/04/2019, 10:04:00
    Author     : Rodrigo
--%>

<%@page import="br.com.projeto3.cadastro.Bd"%>
<%@page import="br.com.projeto3.cadastro.Clientes"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<%
    Clientes cliente = new Clientes();
    int id = 0;

    if (request.getParameter("id") != null) {
        id = Integer.parseInt(request.getParameter("id"));
        cliente = Bd.getClienteById(id);
    }
%>

<%
    if (request.getParameter("adicionar") != null) {
        Clientes c = new Clientes();
        c.setNome(request.getParameter("nome"));
        c.setCpf(request.getParameter("cpf"));
        c.setRg(request.getParameter("rg"));
        c.setEmail(request.getParameter("email"));
        c.setTelefone(request.getParameter("telefone"));
        c.setEndereco(request.getParameter("endereco"));
        c.Create(c);

        response.sendRedirect("listaCliente.jsp");

    }
%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%@include file="WEB-INF/jspf/head.jspf" %>
        <h1>Formulário Adicionar Cliente</h1>
        <%@include file="WEB-INF/jspf/menu.jspf" %>
        <br>

        <form>
            Nome: <input type="text" name="nome" value="<%= cliente.getNome()%>">
            <br><br>
            CPF: <input type="text" name="cpf" value="<%= cliente.getCpf()%>">
            <br><br>
            RG: <input type="text" name="rg" value="<%= cliente.getRg()%>">
            <br><br>
            Email: <input type="text" name="email" value="<%= cliente.getEmail()%>">
            <br><br>
            Telefone: <input type="text" name="telefone" value="<%= cliente.getTelefone()%>">
            <br><br>
            Endereço: <input type="text" name="endereco" value="<%= cliente.getEndereco()%>">
            <br><br>
            <input  type="submit" name="adicionar" value="Cadastrar">
            <a href="listaCliente.jsp"><input type="button"value="Cancelar"></a>
            <input type="hidden" name="id" value="<%= id %>">
        </form>

        <%@include file="WEB-INF/jspf/foot.jspf" %>
    </body>
</html>