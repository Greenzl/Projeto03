<%-- 
    Document   : adicionar
    Created on : 26/03/2019, 21:38:57
    Author     : 
--%>

<%@page import="br.com.projeto3.cadastro.Bd"%>
<%@page import="br.com.projeto3.cadastro.Fornecedores"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%  
    Fornecedores fornecedor = new Fornecedores();
    int id = 0;
    
    if (request.getParameter("id") != null ) {
        id = Integer.parseInt(request.getParameter("id"));
        fornecedor = Bd.getFornecedorById(id);
    }
%>

<%
    if (request.getParameter("adicionar") != null) {
        Fornecedores f = new Fornecedores();
        f.setNome(request.getParameter("nome"));
        f.setRazaoSocial(request.getParameter("razaoSocial"));
        f.setCnpj(request.getParameter("cnpj"));
        f.setEmail(request.getParameter("email"));
        f.setTelefone(request.getParameter("telefone"));
        f.setEndereco(request.getParameter("endereco"));
        f.Create(f);

        response.sendRedirect("listaFornecedor.jsp");
    }
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%@include file="WEB-INF/jspf/head.jspf" %>
        <h1>Formulário Adicionar Fornecedor</h1>
        <%@include file="WEB-INF/jspf/menu.jspf" %>
        <br>

        <form>
            Nome: <input type="text" name="nome" value="<%= fornecedor.getNome() %>"> 
            <br><br>
            Razão Social: <input type="text" name="razaoSocial" value="<%= fornecedor.getRazaoSocial()%>">
            <br><br>
            CNPJ: <input type="text" name="cnpj" value="<%= fornecedor.getCnpj()%>">
            <br><br>
            Email: <input type="text" name="email" value="<%= fornecedor.getEmail()%>">
            <br><br>
            Telefone: <input type="text" name="telefone" value="<%= fornecedor.getTelefone()%>">
            <br><br>
            Endereço: <input type="text" name="endereco" value="<%= fornecedor.getEndereco()%>">
            <input type="submit" name="adicionar" value="adicionar">
            <a href="listaCliente.jsp"><input type="button"value="Cancelar"></a>
            <input type="hidden" name="id" value="<%= id %>">
        </form

        <%@include file="WEB-INF/jspf/foot.jspf" %>
    </body>
</html>    
