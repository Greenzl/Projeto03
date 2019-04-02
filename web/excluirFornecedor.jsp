<%-- 
    Document   : excluirFornecedor
    Created on : 02/04/2019, 14:50:36
    Author     : User
--%>

<%@page import="br.com.projeto3.cadastro.Clientes"%>
        <%@page import="br.com.projeto3.cadastro.Fornecedores"%>
<%@page import="br.com.projeto3.cadastro.Bd"%>
<%@page import="br.com.projeto3.cadastro.Bd"%>
<%
            if(request.getParameter("action") != null && Bd.getFornecedores().size() > 0) {
                String action = request.getParameter("action");
                switch(action) {
                    case "remover": 
                        Fornecedores fornecedor = Bd.getFornecedorById(Integer.parseInt(request.getParameter("id")));
                        fornecedor.Delete();
                        response.sendRedirect(request.getRequestURI());
                        break;
                    
                        
                }
            }
            
        %>