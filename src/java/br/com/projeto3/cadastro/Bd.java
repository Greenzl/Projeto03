package br.com.projeto3.cadastro;

import br.com.projeto3.cadastro.Clientes;
import br.com.projeto3.cadastro.Fornecedores;
import java.util.ArrayList;

/**
 *
 * @author Rodrigo
 */
public class Bd {

    private static ArrayList<Clientes> cliente;
    private static ArrayList<Fornecedores> fornecedor;

    public static ArrayList<Clientes> getClientes() {
        if (cliente == null) {
            cliente = new ArrayList<>();
            Clientes c1 = new Clientes();
            c1.setNome("Rodrigo Vieira Lopes");
            c1.setCpf("492.752.245-40");
            c1.setRg("51-234-547-31");
            c1.setEmail("Rodrigo_vieira98@hotmail.com");
            c1.setTelefone("+55 13 997847282");
            c1.setEndereco("Rua coroados ** ******** ");

            cliente.add(c1);
        }
        return cliente;
    }

    public static ArrayList<Fornecedores> getFornecedores() {
        if (fornecedor == null) {
            fornecedor = new ArrayList<>();
            Fornecedores f1 = new Fornecedores();
            f1.setNome("Fornecedor1");
            f1.setCnpj("CNPJ FORNECEDOR1");
            f1.setRazaoSocial("RAZAO SOCIAL FORNECEDOR1");
            f1.setEmail("EMAIL FORNECEDOR1");
            f1.setTelefone("TELEFONE FORNECEDOR1");
            f1.setEndereco("ENDEREÇO FORNECEDOR1");
            
            fornecedor.add(f1);
        }
        return fornecedor;
    }

    public static Clientes getClienteById(int id) {
        Clientes cliente = Bd.getClientes().get(id);
        return cliente;
    }
    
    public static Fornecedores getFornecedorById(int id) {
        Fornecedores fornecedor = Bd.getFornecedores().get(id);
        return fornecedor;
    }
}