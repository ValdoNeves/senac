programa{

	/*
	 Monte um algoritmo em que se informa a quantidade de hóspedes e, para
	cada hóspede, leia o número do quarto e o valor da diária. Mostre na tela
	a mensagem “Quarto [numero]: R$ [valor]”. Ao final, mostre o total de
	diárias. Não usar vetor ou listas.
		Exemplo 1:
			[Entrada de dados]
			4 (quantidade de hóspedes)
			101 (número do quarto)
			120 (valor da diária)
			[Saída de dados]
			Quarto 101: R$ 120
			[Entrada de dados]
			102 (número do quarto)
			150 (valor da diária)
			[Saída de dados]
			Quarto 102: R$ 150
			[Entrada de dados]
			201 (número do quarto)
			120 (valor da diária)
			[Saída de dados]
			Quarto 201: R$ 120
			[Entrada de dados]
			301 (número do quarto)
			100 (valor da diária)
			[Saída de dados]
			Quarto 301: R$ 100
			[Saída de dados]
			Total de diárias: R$ 490
	 
	 
	 */
	
	funcao inicio(){
		inteiro quantidade = 0
		inteiro quarto
		real diariaAtual = -1.0
		real diaria = 0.0
				

		enquanto(quantidade <= 0 ){
			escreva("Informe a quantidade de hospedes: ")
			
			leia(quantidade)
			se(quantidade <= 0){
				escreva("Digite um valor valido, por favor!\n\n\n")
			}
		}



		para(inteiro i = 0; i < quantidade; i++){

			quarto = 0
			enquanto(quarto <= 0){
			escreva("\nInforme o numero do quarto: ")
			
			leia(quarto)
				se(quarto < 0){
					escreva("Digite um valor valido, por favor!\n\n\n")
				}
				
			}

			
			diariaAtual = -1.0
			enquanto(diariaAtual < 0){
			escreva("\nInforme o valor da diarias: R$")
			
			leia(diariaAtual)
				se(diariaAtual < 0){
					escreva("Digite um valor valido, por favor!\n\n\n")
				}
				
			}
			
			limpa()
			escreva("Quarto "+ quarto + ": R$ " + diariaAtual+"\n\n")
			diaria = diaria + diariaAtual
			
			
		}
		
		escreva("Total de diárias: R$" + diaria +"\n\n\n")
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 593; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */