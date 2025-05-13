
/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.calculadora_interfacegrafica;

import javax.swing.JOptionPane;

/**
 *
 * @author dti
 */
public class Calculadora_Grafica {
    

    private double n1;
    private double n2;
    private double r;
    
    public Calculadora_Grafica () {
        this(0, 0, 0);
    }

    public Calculadora_Grafica(double n1, double n2, double r) {
        this.n1 = n1;
        this.n2 = n2;
        this.r = r;
    }

    public double getN1() {
        return n1;
    }

    public void setN1(double n1) {
        this.n1 = n1;
    }

    public double getN2() {
        return n2;
    }

    public void setN2(double n2) {
        this.n2 = n2;
    }

    public double getR() {
        return r;
    }

    public void setR(double r) {
        this.r = r;
    }
    
    public void somar() {
        
        setN1(Double.parseDouble(JOptionPane.showInputDialog("Qual o primeiro número?")));
        setN2(Double.parseDouble(JOptionPane.showInputDialog("Qual o segundo número?")));
        
        setR(getN1() + getN2());
        
         JOptionPane.showMessageDialog(null,"A soma do dois números é:"+getR ());
        
    }
    
public void subtrair(double valor1, double valor2) {
    
    setN1(valor1);
    setN2(valor2);
    
    
    setR(getN1() - getN2());
             

}
public double multiplicar() {
    
    setN1(Double.parseDouble(JOptionPane.showInputDialog("Qual o primeiro número?")));
    setN2(Double.parseDouble(JOptionPane.showInputDialog("Qual o segundo número?")));
    
    setR(getN1() * getN2());
    
    
    
    return getR();
    
}
   
public double dividir(double valor1, double valor2) {
   
    setN1(valor1);
    setN2(valor2);
    
    if (getN2() != 0) {
                  
        setR(getN1() / getN2());
        
   
    } else {
        JOptionPane.showMessageDialog(null, "Erro: divisão por zero!");
        
    }    
    
    return getR();
}

   


}

