programa{
	
	funcao inicio(){
		inteiro dias = 0
		inteiro limiteDeDias = 30
		real valorDiaria = 0.0
		real resultado

		escreva("*******====---> Seja bem vindo ao nosso sistema!!! <---====*******\n\n\n")
		enquanto(valorDiaria <= 0){
			escreva("Informe o valor da diaria: ")
			leia(valorDiaria)
			se(valorDiaria <= 0){
				escreva("Informe um valor valido, por favor!\n\n")
			}
			
		}
		enquanto(dias <= 0 ou dias > limiteDeDias){
			escreva("Informe a quantidades de dias a serem reservados: ")
			leia(dias)
			se(dias <= 0){
				escreva("Informe um valor maior que zero por favor!\n\n")
			}
			se(dias > limiteDeDias){
				escreva("Temos um limite de "+limiteDeDias+" dias, por favor informe um valor de ate "+limiteDeDias+" dias!\n\n")
				
			}
			
		
			
		}
		se(dias > 0 e dias <= limiteDeDias){
				resultado = valorDiaria * dias
				limpa()
				escreva("Diaria de R$"+valorDiaria+", por "+ dias+" dias\n")
				escreva("Total a pagar: R$"+ resultado+"\n\n\n")
				escreva("************* FIM DO PROGRAMA *************\n\n\n")
				
			}
			


	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 740; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */