package com.example.testebia;

import javafx.fxml.FXML;
import javafx.scene.control.Button;
import javafx.scene.control.Label;
import javafx.scene.control.TextField;
import javafx.scene.text.Text;

import static java.lang.Double.parseDouble;

public class HelloController {

    @FXML
    private Label resultado;

    @FXML
    private Text resultadotext;

    @FXML
    private Text aprovado;

    @FXML
    private Text reprovado;

    @FXML
    private TextField nota1;

    @FXML
    private TextField nota2;

    @FXML
    private TextField nota3;

    @FXML
    private Button calcular;

    @FXML
    protected void Calculadora() {

       String n1 = nota1.getText();
       String n2 = nota2.getText();
       String n3 = nota3.getText();

       double soma = (parseDouble(n1) + parseDouble(n2) + parseDouble(n3)) /3;

       if(soma >= 7){

           resultadotext.setText("Resultado: Aprovado, Parabens! ");
       }
       else {
           resultadotext.setText("Resultado: Reprovado, SE FODEU! ");
       }

        resultado.setText("" + soma);





    }


}
