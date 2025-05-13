
package ativiade02;

import javax.swing.JOptionPane;

/**
 *
 * @author Higor
 */
public class Pessoa {
    
    
     private String nome; 
     private String enderco;
     private double salario;
     private String telefone;
     private String email;
    
    public Pessoa(){
    
    this("","", 0, "", "");
    
    }

    public Pessoa(String nome, String enderco, double salario, String telefone, String email) {
        this.nome = nome;
        this.enderco = enderco;
        this.salario = salario;
        this.telefone = telefone;
        this.email = email;
    }

    /**
     * @return the nome
     */
    public String getNome() {
        return nome;
    }

    /**
     * @param nome the nome to set
     */
    public void setNome(String nome) {
        this.nome = nome;
    }

    /**
     * @return the enderco
     */
    public String getEnderco() {
        return enderco;
    }

    /**
     * @param enderco the enderco to set
     */
    public void setEnderco(String enderco) {
        this.enderco = enderco;
    }

    /**
     * @return the salario
     */
    public double getSalario() {
        return salario;
    }

    /**
     * @param salario the salario to set
     */
    public void setSalario(double salario) {
        this.salario = salario;
    }

    /**
     * @return the telefone
     */
    public String getTelefone() {
        return telefone;
    }

    /**
     * @param telefone the telefone to set
     */
    public void setTelefone(String telefone) {
        this.telefone = telefone;
    }

    /**
     * @return the email
     */
    public String getEmail() {
        return email;
    }

    /**
     * @param email the email to set
     */
    public void setEmail(String email) {
        this.email = email;
    }
    
    public void inserirDadosPessoa() {
    
    setNome(JOptionPane.showInputDialog("Qual é seu nome?"));
    setEnderco(JOptionPane.showInputDialog("Qual é seu endereço?"));
    setSalario(Double.parseDouble(JOptionPane.showInputDialog("Qual seu salário?")));
    setTelefone(JOptionPane.showInputDialog("Qual seu telefone?"));
    setEmail(JOptionPane.showInputDialog("Qual seu email?"));
                            
    }

    
     public void apresentarPessoa() {
     
     JOptionPane.showMessageDialog(null, "Seu nome é " + getNome());
     JOptionPane.showMessageDialog(null,"Seu endereço é "+getEnderco());
     JOptionPane.showMessageDialog(null,"Seu salário é "+getSalario ());
     JOptionPane.showMessageDialog(null,"Seu telefone é "+getTelefone());
     JOptionPane.showMessageDialog(null,"Seu email é "+getEmail());
     
     
     }
    
    
    
    
    
}
