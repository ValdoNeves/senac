programa{
	
	funcao inicio(){
		inteiro convidados, rtSalgado
		inteiro salgado = 7
		real agua = 0.5
		real cafe = 0.2
		real rtCafe, rtAgua

		escreva("Bem vindo!\nInforme a quantidade de convidados: ")
		leia(convidados)


		se(convidados <= 350){
			rtAgua = convidados * agua
			rtSalgado = convidados * salgado
			rtCafe = convidados * cafe

			escreva("\nSerão necessarios: "+rtAgua+" litros de água\n")
			escreva("Serão necessarios: "+rtCafe+" litros de café\n")
			escreva("Serão necessarios: "+rtSalgado+" salgados\n")
			
		}senao{
			escreva("Quantidade de convidados superior à capacidade ")
		}
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 230; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */