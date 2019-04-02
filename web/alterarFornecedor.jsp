<%-- 
    Document   : alterarFornecedor
    Created on : 02/04/2019, 10:15:18
    Author     : Soryu
--%>

<%@page import="br.com.projeto3.cadastro.Bd"%>
<%@page import="br.com.projeto3.cadastro.Fornecedores"%>
<%  
    Fornecedores fornecedor = new Fornecedores();
    int id = 0;
    
    if (request.getParameter("id") != null ) {
        id = Integer.parseInt(request.getParameter("id"));
        fornecedor = Bd.getFornecedorById(id);
    }
    
%>
<%
    if (request.getParameter("alterar") != null) {
        fornecedor.setNome(request.getParameter("nome"));
        fornecedor.setRazaoSocial(request.getParameter("Razao Social"));
        fornecedor.setCnpj(request.getParameter("cnpj"));
        fornecedor.setEmail(request.getParameter("email"));
        fornecedor.setTelefone(request.getParameter("telefone"));
        fornecedor.setEndereco(request.getParameter("endereco"));
        fornecedor.Update(fornecedor, id);
        response.sendRedirect("listaFornecedor.jsp");
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
        <h1>Formulario alterar Fornecedor</h1>
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
            <input type="submit" name="alterar" value="alterar">
            <a href="listaCliente.jsp"><input type="button"value="Cancelar"></a>
            <input type="hidden" name="id" value="<%= id %>">
        </form

        <%@include file="WEB-INF/jspf/foot.jspf" %>
    </body>
</html>    
