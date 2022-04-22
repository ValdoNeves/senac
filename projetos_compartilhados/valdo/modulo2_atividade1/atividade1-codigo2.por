programa{
	/*
		O hotel oferece café, água e salgadinhos para cada um dos convidados
		de um evento alocado em suas dependências. A quantidade de café, em
		litros, é calculada como 0,2 litro para cada convidado; a quantidade de
		água é calculada como 0,5 litro para cada convidado; são oferecidos 7
		salgadinhos por pessoa. Faça um algoritmo que receba a quantidade de
		convidados e valide se o número de pessoas excede 350 (a capacidade
		máxima do salão), mostrando, nesse caso, a mensagem “quantidade de
		convidados superior à capacidade máxima”. Caso a quantidade seja
		válida, calcule a quantidade de água, café e salgadinhos para o evento,
		mostrando na tela esses valores. 
			Exemplo 1:
				[Entrada de dados]
				360 (número de convidados)
				[Saída de dados]
				Quantidade de convidados superior à capacidade
				máxima
			Exemplo 2:
				[Entrada de dados]
				100 (número de convidados)
				[Saída de dados]
				20 litros de café, 50 litros de água, 700
				salgadinho
	
	*/
	
	funcao inicio(){
		inteiro convidados, salgados
		real cafe, agua
		inteiro maxConvidados = 350
		
		escreva("**************Suporte ao anfitrião**************\n\n\n")
		escreva("Digite a quantidade de convidados esperada: ")
		
		leia(convidados)

		se(convidados <= maxConvidados){
			agua = qtdAgua(convidados)
			cafe = qtdCafe(convidados)
			salgados = qtdSalgados(convidados)
			escreva("\n\nPara "+convidados+" convidados serão necessários:\n\n")
			escreva("    * "+agua+" litros de água\n")
			escreva("    * "+cafe+" litros de café\n")
			escreva("    * "+salgados+" salgados\n\n")
		}senao{
			escreva("\nQuantidade máxima de "+maxConvidados+" convidados excedida\n")
		}
		

	}

	funcao real qtdCafe(inteiro convidados){
		real resultado = convidados * 0.2
		retorne resultado
	}

	funcao real qtdAgua(inteiro convidados){
		real resultado = convidados * 0.5
		retorne resultado
		
	}

	funcao inteiro qtdSalgados(inteiro convidados){
		inteiro resultado = convidados * 7
		retorne resultado
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1692; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */