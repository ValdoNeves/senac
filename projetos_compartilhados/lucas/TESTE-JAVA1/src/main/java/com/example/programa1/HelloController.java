package com.example.programa1;

import javafx.fxml.FXML;
import javafx.scene.control.Label;
import javafx.scene.control.TextField;

public class HelloController {
    @FXML
    private Label welcomeText;

    @FXML
    private TextField input;

    @FXML
    protected void onHelloButtonClick() {

        String Entrei = input.getText();
        if(Entrei == "") {
            welcomeText.setText("Digite um valor no campo Acima");
        }
        else {
            welcomeText.setText(Entrei + " adora pão de queijo");
            input.setText("");
        }

    }
    @FXML
    protected void off() { welcomeText.setText("Acabou"); }
}