<%-- 
    Document   : excluir
    Created on : 29/03/2019, 11:01:57
    Author     : Soryu
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
    if (request.getParameter("remover") != null) {
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
        <title>Excluir cliente</title>
    </head>
    <body>
        <%@include file="WEB-INF/jspf/head.jspf" %>
        <h1>Excluir Cliente?</h1>
        <%@include file="WEB-INF/jspf/menu.jspf" %>
        <br>
        
               
        <form>
            <b> Nome: <u><%=cliente.getNome()%></u></b>
            <br><br>
            <b> CPF: <%=cliente.getCpf()%></b>
            <br><br>
            <b> RG: <%=cliente.getRg()%></b>
            <br><br>
            <b> Email: <%=cliente.getEmail()%></b>
            <br><br>
            <b> Telefone: <%=cliente.getTelefone()%></b>
            <br><br>
            <b> Endereço: <%= cliente.getEndereco()%></b>
            <br><br>
            <input type="submit" name="excluir" value="Sim"/>
            <input type="submit" name="voltar" value="Não"/>
            <input type="hidden" name="id" value="<%=id%>"/>
            
        </form>
            <%if(request.getParameter("excluir")!=null){
                Bd.getClientes().remove(id);
                response.sendRedirect("listaCliente.jsp");
            }
            if(request.getParameter("voltar")!=null){
                response.sendRedirect("listaCliente.jsp");
            }
%>
        <%@include file="WEB-INF/jspf/foot.jspf" %>
    </body>
</html>
</html>
</html>
</html>