<%-- 
    Document   : alterar
    Created on : 29/03/2019, 11:01:43
    Author     : Rodrigo
--%>

<%@page import="br.com.projeto3.cadastro.Bd"%>
<%@page import="br.com.projeto3.cadastro.Clientes"%>
<%
    Clientes cliente = new Clientes();
    int id = 0;

    if (request.getParameter("id") != null) {
        id = Integer.parseInt(request.getParameter("id"));
        cliente = Bd.getClienteById(id);
    }
%>

<%
    if (request.getParameter("alterar") != null) {
        cliente.setNome(request.getParameter("nome"));
        cliente.setCpf(request.getParameter("cpf"));
        cliente.setRg(request.getParameter("rg"));
        cliente.setEmail(request.getParameter("email"));
        cliente.setTelefone(request.getParameter("telefone"));
        cliente.setEndereco(request.getParameter("endereco"));
        cliente.Update(cliente, id);
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
        <h1>Formulário Alterar Cliente</h1>
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
            <input type="submit" name="alterar" value="Alterar">
            <a href="listaCliente.jsp"><input type="button"value="Cancelar"></a>
            <input type="hidden" name="id" value="<%= id %>">
            
        </form>

        <%@include file="WEB-INF/jspf/foot.jspf" %>
    </body>
</html>