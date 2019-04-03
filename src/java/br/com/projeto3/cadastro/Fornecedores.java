/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.projeto3.cadastro;

import java.io.InvalidClassException;

/**
 *
 * @author Soryu
 */
public class Fornecedores {
    private String nome;
    private String RazaoSocial;
    private String cnpj;
    private String email;
    private String endereco;
    private String telefone;

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public String getRazaoSocial() {
        return RazaoSocial;
    }

    public void setRazaoSocial(String RazaoSocial) {
        this.RazaoSocial = RazaoSocial;
    }

    public String getCnpj() {
        return cnpj;
    }

    public void setCnpj(String cnpj) {
        this.cnpj = cnpj;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getEndereco() {
        return endereco;
    }

    public void setEndereco(String endereco) {
        this.endereco = endereco;
    }

    public String getTelefone() {
        return telefone;
    }

    public void setTelefone(String telefone) {
        this.telefone = telefone;
    }

    public void Create(Object data) {
       Fornecedores fornecedor = (Fornecedores) data;
       Bd.getFornecedores().add(fornecedor);
    }

 
    public Object Read() {
        throw new UnsupportedOperationException("^^");   }

    public void Update(Object obj, Object data) {
       Fornecedores fornecedor = (Fornecedores) obj;
       Bd.getFornecedores().set((Integer) data, fornecedor);
    }

    public boolean Delete() throws InvalidClassException{

           return Bd.getFornecedores().remove(this);

    }

}
