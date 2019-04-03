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
public class Clientes{
    private String nome;
    private String cpf;
    private String rg;
    private String email;
    private String endereco;
    private String telefone;

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public String getCpf() {
        return cpf;
    }

    public void setCpf(String cpf) {
        this.cpf = cpf;
    }

    public String getRg() {
        return rg;
    }

    public void setRg(String rg) {
        this.rg = rg;
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
        Clientes c = (Clientes) data;
        Bd.getClientes().add(c);
    }

    public Object Read() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }


    public void Update(Object obj, Object data) {
       Clientes cliente = (Clientes) obj;
       Bd.getClientes().set((Integer) data, cliente);
    }

    /**
     *
     * @param cliente
     * @return boolean
     * @throws InvalidClassException
     */
    
    public boolean Delete() throws InvalidClassException{
        return false;
    }
}
