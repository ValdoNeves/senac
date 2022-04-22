package com.example.testebia;

import static java.lang.Double.parseDouble;

public class Calcular {

    public double media (String n1, String n2, String n3){

        double soma = (parseDouble(n1) + parseDouble(n2) + parseDouble(n3)) /3;
        return soma;
    }
}
