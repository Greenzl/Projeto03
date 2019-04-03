<%-- 
    Document   : excluir
    Created on : 29/03/2019, 11:01:57
    Author     : Soryu
--%>


<%@page import="br.com.projeto3.cadastro.Fornecedores"%>
<%@page import="br.com.projeto3.cadastro.Bd"%>
<%
    Fornecedores fornecedor = new Fornecedores();
    int id = 0;

    if (request.getParameter("id") != null) {
        id = Integer.parseInt(request.getParameter("id"));
        fornecedor = Bd.getFornecedorById(id);
    }
%>

<%
    if (request.getParameter("remover") != null) {
        fornecedor.setNome(request.getParameter("nome"));
        fornecedor.setCnpj(request.getParameter("cnpj"));
        fornecedor.setRazaoSocial(request.getParameter("razao social"));
        fornecedor.setEmail(request.getParameter("email"));
        fornecedor.setTelefone(request.getParameter("telefone"));
        fornecedor.setEndereco(request.getParameter("endereco"));
        fornecedor.Update(fornecedor, id);
        response.sendRedirect("listaCliente.jsp");
    }
%>

 <!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Excluir fornecedor</title>
    </head>
    <body>
        <%@include file="WEB-INF/jspf/head.jspf" %>
        <h1>Excluir Fornecedor?</h1>
        <%@include file="WEB-INF/jspf/menu.jspf" %>
        <br>
        
               
        <form>
            <b> Nome: <u><%=fornecedor.getNome()%></u></b>
            <br><br>
            <b> CNPJ: <%=fornecedor.getCnpj()%></b>
            <br><br>
            <b> RAZÃO SOCIAL: <%=fornecedor.getRazaoSocial()%></b>
            <br><br>
            <b> Email: <%=fornecedor.getEmail()%></b>
            <br><br>
            <b> Telefone: <%=fornecedor.getTelefone()%></b>
            <br><br>
            <b> Endereço: <%=fornecedor.getEndereco()%></b>
            <br><br>
            <input type="submit" name="excluir" value="Sim"/>
            <input type="submit" name="voltar" value="Não"/>
            <input type="hidden" name="id" value="<%=id%>"/>
            
        </form>
            <%if(request.getParameter("excluir")!=null){
                Bd.getFornecedores().remove(id);
                response.sendRedirect("listaFornecedor.jsp");
            }
            if(request.getParameter("voltar")!=null){
                response.sendRedirect("listaFornecedor.jsp");
            }
%>
        <%@include file="WEB-INF/jspf/foot.jspf" %>
    </body>
</html>