<%-- 
    Document   : adicionar
    Created on : 26/03/2019, 21:38:57
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Adicionar Fornecedores</title>
    </head>
    <body>
        <h1>Fornecedores</h1>
        <h2>Adicionar</h2>
        <form>
            Nome:
            <br/><input type="text" name="nome" />
            <br/>Razão Social:
            <br/><input type="text" name="rSocial" />
            <br/>CNPJ:
            <br/><input type="text" name="cnpj" />
            <br/>E-mail:
            <br/><input type="text" name="email" />
            <br/>Telefone:
            <br/><input type="text" name="fone" />
            <br/>Endereço:
            <br/><input type="text" name="ender" />
            <h2>Deseja incluir o novo cadastro?</h2>
            <input type="submit" name="adicionar" value="Sim"/>
            <input type="submit" name="adicionar" value="Não"/>
        </form>
    </body>
</html>
