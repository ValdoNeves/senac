programa{

	/*
		Quando uma empresa contrata o hotel para abrigar eventos, o hotel
		oferece garçons para servir os convidados. Considerando que cada
		garçom custa R$ 10,50 por hora, escreva um algoritmo que recebe o
		número de garçons necessários e o total de horas do evento. Depois
		calcule o custo total que o hotel terá com a contratação desses
		profissionais e mostre na tela o resultado. 
	*/
	inclua biblioteca Matematica --> math
	
	funcao inicio(){
		
		inteiro funcionarios
		real horas, total
		escreva("Sejá bem vindo!!\n")
		escreva("digite o numero de garçons necessarios: ")
		
		leia(funcionarios)

		escreva("digite a quantidade total de horas do evento: ")
		leia(horas)
		limpa()
		total = totalAPagar(funcionarios, horas)

		escreva("O valor total para "+funcionarios+" garçons e "+horas+" horas é de R$" + total +" !")
		
			
	}

	funcao real totalAPagar(inteiro funcionario, real horas){
		real resultado
		real valorPorHora = 10.50
		resultado = (funcionario * valorPorHora) * horas
		
		
		retorne math.arredondar(resultado, 2)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1013; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */