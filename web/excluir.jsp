<%-- 
    Document   : excluir
    Created on : 29/03/2019, 11:01:57
    Author     : Soryu
--%>

        <%@page import="br.com.projeto3.cadastro.Clientes"%>
        <%@page import="br.com.projeto3.cadastro.Fornecedores"%>
<%@page import="br.com.projeto3.cadastro.Bd"%>
<%@page import="br.com.projeto3.cadastro.Bd"%>
<%
           if(request.getParameter("action") != null && Bd.getClientes().size() > 0) {
                String action = request.getParameter("action");
                switch(action) {
                    case "remover": 
                        Clientes cliente = Bd.getClienteById(Integer.parseInt(request.getParameter("id")));
                        cliente.Delete();
                        response.sendRedirect(request.getRequestURI());
                        response.sendRedirect("listaCliente");
          //Clientes cliente = new Clientes();
  //  int id = 0;

   // if (request.getParameter("id") != null) {
        //id = Integer.parseInt(request.getParameter("id"));
       // cliente = Bd.getClienteById(id);
    }  
     //if (request.getParameter("excluir") != null) {
       
       //cliente.Delete();
        //response.sendRedirect("listaCliente.jsp");
    
    
                        
                
            }
            
        %>

