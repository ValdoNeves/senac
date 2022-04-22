package com.example.testejava4;

public class Menu {

   private String  nome;
   private String  ingredientes;
   private double  preco;

    public Menu (String prato, String descricao, double valor){

        this.nome = prato;
        this.ingredientes = descricao;
        this.preco = valor;

    }

    public void menu2 (){

        System.out.println(this.nome + " " + this.preco);

    }
}
