package com.mycompany.calculadora_interfacegrafica;

import javax.swing.*;
import java.awt.*;
import java.awt.event.*;

public class Principal extends JFrame {

    JLabel rotulo1, rotulo2, rotulo3,rotulo4;
    JTextField texto1, texto2;
    JButton botao1, botao2, botao3, botao4, botaolimpar, botaoHab, botaoDesab, botaoExi, botaoOcu, botaosair;

    public Principal() {
        super("Calculadora");
        Container tela = getContentPane();
        setLayout(null);

        rotulo1 = new JLabel("1° Número");
        rotulo2 = new JLabel("2° Número");
        rotulo3 = new JLabel("Resultado:");
        rotulo4 = new JLabel("Desenvolvido por: Higor Mota de Oliveira");
        
        
        texto1 = new JTextField(10);
        texto2 = new JTextField(10);

        
        botao1 = new JButton("+");
        botao2 = new JButton("-");
        botao3 = new JButton("*");
        botao4 = new JButton("/");
        botaolimpar = new JButton("Limpar");
        botaoHab = new JButton("Habilitar");
        botaoDesab = new JButton("Desabilitar");
        botaoExi = new JButton("Exibir");
        botaoOcu = new JButton("Ocultar");
        botaosair = new JButton("Sair");

        // Posições
        rotulo1.setBounds(40,20,80,20);
        rotulo2.setBounds(40,60,80,20);
        rotulo3.setBounds(40,120,300,20);
        rotulo4.setBounds(20,320,300,20);


        texto1.setBounds(120,20,80,20);
        texto2.setBounds(120,60,80,20);

        
        botao1.setBounds(300,20,55,30);
        botao2.setBounds(300,50,55,30);
        botao3.setBounds(300,80,55,30);
        botao4.setBounds(300,110,55,30);
        botaolimpar.setBounds(300,140,100,30);

        botaoHab.setBounds(20,250,100,20);
        botaoDesab.setBounds(140,250,100,20);
        botaoExi.setBounds(260,250,100,20);
        botaoOcu.setBounds(380,250,100,20);
        botaosair.setBounds(380,300,100,20);

        // Estilo
        rotulo1.setFont(new Font("Arial", Font.BOLD, 14));
        rotulo2.setFont(new Font("Arial", Font.BOLD, 14));
        rotulo3.setFont(new Font("Arial", Font.BOLD, 14));
        rotulo4.setFont(new Font("Arial", Font.BOLD, 14));
        botaosair.setForeground(Color.red);
        rotulo3.setForeground(new Color(240, 7, 131));

        //Atalho Botão
        
        botaolimpar.setMnemonic(KeyEvent.VK_L); 
botaoExi.setMnemonic(KeyEvent.VK_X); 
botaosair.setMnemonic(KeyEvent.VK_S);
        
        
        // Adicionar na tela
        tela.add(rotulo1);
        tela.add(rotulo2);
        tela.add(rotulo3);
         tela.add(rotulo4);
        tela.add(texto1);
        tela.add(texto2);
        tela.add(botao1);
        tela.add(botao2);
        tela.add(botao3);
        tela.add(botao4);
        tela.add(botaolimpar);
        tela.add(botaoHab);
        tela.add(botaoDesab);
        tela.add(botaoExi);
        tela.add(botaoOcu);
        tela.add(botaosair);

        // Instância da calculadora
        Calculadora_Grafica calc = new Calculadora_Grafica();

        // Ações dos botões
        botao1.addActionListener(e -> {
            try {
                double n1 = Double.parseDouble(texto1.getText());
                double n2 = Double.parseDouble(texto2.getText());
                calc.setN1(n1);
                calc.setN2(n2);
                calc.setR(n1 + n2);
                rotulo3.setText("Resultado: " + calc.getR());
            } catch (NumberFormatException ex) {
                JOptionPane.showMessageDialog(null, "Digite apenas números válidos.");
            }
        });

        botao2.addActionListener(e -> {
            try {
                double n1 = Double.parseDouble(texto1.getText());
                double n2 = Double.parseDouble(texto2.getText());
                calc.subtrair(n1, n2);
                rotulo3.setText("Resultado: " + calc.getR());
            } catch (NumberFormatException ex) {
                JOptionPane.showMessageDialog(null, "Digite apenas números válidos.");
            }
        });

        botao3.addActionListener(e -> {
            try {
                double n1 = Double.parseDouble(texto1.getText());
                double n2 = Double.parseDouble(texto2.getText());
                calc.setN1(n1);
                calc.setN2(n2);
                calc.setR(n1 * n2);
                rotulo3.setText("Resultado: " + calc.getR());
            } catch (NumberFormatException ex) {
                JOptionPane.showMessageDialog(null, "Digite apenas números válidos.");
            }
        });

        botao4.addActionListener(e -> {
            try {
                double n1 = Double.parseDouble(texto1.getText());
                double n2 = Double.parseDouble(texto2.getText());
                if (n2 == 0) {
                    JOptionPane.showMessageDialog(null, "Erro: divisão por zero!");
                } else {
                    double resultado = calc.dividir(n1, n2);
                    rotulo3.setText("Resultado: " + resultado);
                }
            } catch (NumberFormatException ex) {
                JOptionPane.showMessageDialog(null, "Digite apenas números válidos.");
            }
        });

       botaosair.addActionListener 
( 
new ActionListener(){ 
public void actionPerformed(ActionEvent e){ 
System.exit(0); 
} 
} 
);      
  botaolimpar.addActionListener( 
new ActionListener(){ 
public void actionPerformed(ActionEvent e){ 
texto1.setText(null); 
texto2.setText(null);
rotulo3.setText("Resultado:");
texto1.requestFocus(); 
} 
} 
);     
 
    
  botaoHab.addActionListener( 
new ActionListener(){ 
public void actionPerformed(ActionEvent e){ 
rotulo1.setEnabled(true); 
rotulo2.setEnabled(true);
rotulo3.setEnabled(true);
} 
} 
);     
  
  
   botaoDesab.addActionListener( 
new ActionListener(){ 
public void actionPerformed(ActionEvent e){ 

rotulo3.setEnabled(false); 
} 
} 
); 
   
   
    botaoExi.addActionListener( 
new ActionListener(){ 
public void actionPerformed(ActionEvent e){ 
rotulo1.setVisible(true); 
rotulo2.setVisible(true); 
rotulo3.setVisible(true); 

} 
} 
);    
    
    botaoOcu.addActionListener( 
new ActionListener(){ 
public void actionPerformed(ActionEvent e){ 
rotulo1.setVisible(false); 
rotulo2.setVisible(false);
rotulo3.setVisible(false);

} 
} 
);     
    
    setSize(500, 400);
setVisible(true);
setLocationRelativeTo(null);
    
    
    }
    
    
    
    public static void main(String args[]) {
        Principal app = new Principal();
        app.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
    }
}

    
    
    
    
    

