/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Exerc_Calculadora;
import javax.swing.JOptionPane;
/**
 *
 * @author Higor
 */
public class Principal {
     public static void main(String[] args) {
        
        Calculadora_com_classe_de_modelagem calculadora = new Calculadora_com_classe_de_modelagem ();
        
        String opcao = JOptionPane.showInputDialog(null, 
            "Escolha a operação:\n1. Soma\n2. Subtração\n3. Multiplicação\n4. Divisão");

        double a=0, b=0;

        switch(opcao) {
            case "1":
                calculadora.somar();
                break;
            case "2":
                a = Double.parseDouble(JOptionPane.showInputDialog("Qual o primeiro número para subtrair?"));
                b = Double.parseDouble(JOptionPane.showInputDialog("Qual o segundo número para subtrair?"));
                calculadora.subtrair(a, b);
                break;
            case "3":
               calculadora.setR(calculadora.multiplicar()); 
               JOptionPane.showMessageDialog(null, "A multiplicação dos dois números é: " + calculadora.getR());
               
                break;
            case "4":
            a = Double.parseDouble(JOptionPane.showInputDialog("Qual o primeiro número para dividir?"));
            b = Double.parseDouble(JOptionPane.showInputDialog("Qual o segundo número para dividir?"));
                calculadora.setR(calculadora.dividir(a, b));
                
              JOptionPane.showMessageDialog(null, "A divisão dos dois números é: " +calculadora.getR ());
         
                
                break;
            default:
                JOptionPane.showMessageDialog(null, "Opção inválida.");
        
    }
}
}