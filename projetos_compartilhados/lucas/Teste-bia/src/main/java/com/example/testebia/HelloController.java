package com.example.testebia;

import com.example.actions.Calcular;
import javafx.fxml.FXML;
import javafx.scene.control.Button;
import javafx.scene.control.Label;
import javafx.scene.control.TextField;
import javafx.scene.layout.AnchorPane;
import javafx.scene.text.Text;

public class HelloController {

    @FXML
    private Label resultado;

    @FXML
    private Text resultadotext;

    @FXML
    private Text aprovado;

    @FXML
    private AnchorPane tela;

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



//       double soma = (parseDouble(n1) + parseDouble(n2) + parseDouble(n3)) /3;
       double soma = new Calcular().Media(n1, n2, n3);

       if(soma >= 7){

           resultadotext.setText("Aprovado, Parabéns! ");
        tela.setStyle("-fx-background-color: linear-gradient(to bottom,#54ff68, #00872d);");
       }
       else {
           resultadotext.setText("Reprovado, Parabéns! ");
           tela.setStyle("-fx-background-color: linear-gradient(to bottom,#ff3d3d, #a00000)");
       }

        resultado.setText(Double.toString(soma));
//        System.out.printf("%.1f", soma);
    }
}
