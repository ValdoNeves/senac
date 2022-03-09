package com.example.testejava2;

import javafx.fxml.FXML;
import javafx.scene.control.Label;

import javafx.fxml.FXML;
import javafx.scene.control.Button;
import javafx.scene.control.Label;
import javafx.scene.control.TextField;

import static java.lang.Double.parseDouble;
import static java.lang.Float.parseFloat;

public class HelloController {

@FXML
private TextField nota1;

@FXML
private Label resultadomedia;

@FXML
private TextField nota2;

@FXML
private Button calcular;

// media( nota1 + nota2 ) {

@FXML
protected void calculadora() {
    String valor1 = nota1.getText();

    String valor2 = nota2.getText();
    double media = (parseDouble(valor1) + parseDouble(valor2)) / 2;
    //float media = (parseFloat(valor1) + parseFloat(valor2)) / 2;

    resultadomedia.setText("Resultado: " + media);


}

        }


