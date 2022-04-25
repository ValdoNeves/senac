programa{
	/*
		Considerando que o hotel tenha 20 quartos, desenvolva um algoritmo
		para marcar a ocupação de cada quarto.
		No início todos os quartos estão livres.
		O usuário informará então o número do quarto (de 1 a 20);
		o sistema questionará “O quarto está livre ou ocupado? (L/O)”;
		o usuário informará L ou O e o sistema registrará essa escolha para o quarto.
		Caso o usuário informe “O”, mas o quarto já está marcado como ocupado,
		mostre na tela “Quarto já está ocupado”. Pergunte ao usuário se ele
		deseja continuar e caso positivo, repita a operação. Ao fim, mostre o status de cada quarto.
			Exemplo:
				[Entrada de dados]
				5 (número do quarto)
				O (livre ou ocupado)
				[Saída de dados]
				Deseja continuar? (S/N)
				[Entrada de dados]
				S (continuar ou não)
				7 (número do quarto)
				O (livre ou ocupado)
				[Saída de dados]
				Deseja continuar? (S/N)
				[Entrada de dados]
				S (continuar ou não)5 (número do quarto)
				O (livre ou ocupado)
				[Saída de dados]
				Quarto já ocupado
				Deseja continuar? (S/N)
				[Entrada de dados]
				S (continuar ou não)
				20 (número do quarto)
				[Saída de dados]
				Quarto já ocupado
				Deseja continuar? (S/N)
				[Entrada de dados]
				N (continuar ou não)
				[Saída de dados]
				1- livre; 2- livre; 3- livre; 4- livre; 5-ocupado;
				6- livre; 7- ocupado; 8- livre; 9- livre; 10-livre;
				11- livre; 12- livre; 13- livre; 14- livre; 15-livre;
				16- livre; 17- livre; 18- livre; 19- livre; 20-ocupado
	
	*/
	funcao inicio(){
		cadeia quartos[20]
		inteiro escolhaQuarto
		cadeia ocupado
		//escreva("cadeia inicial")
		para(inteiro i = 0; i < 20; i++){
			//quartos[0][1] = "1"
			quartos[i] = "Livre;\n"
			//escreva("for inicial")
		}
		escreva("Escolha um quarto de 1 a 20 para saber sobre sua disponibilidade\n")
		leia(escolhaQuarto)
		se(escolhaQuarto > 0 e escolhaQuarto < 21){
			inteiro apontador = escolhaQuarto - 1
			escreva("O quarto escolhido foi o numero: " + (escolhaQuarto) + " e no momento ele esta "+ quartos[apontador])
			escreva("\nO quarto está livre ou ocupado? (L/O)\n")
			leia(ocupado)
			se(ocupado == "L"){
				se(quartos[apontador] == "Livre"){
					escreva("Esse quarto já estava disponivel")
				}senao{
					quartos[apontador] = "Livre;\n"
				}
			}
			se(ocupado == "O"){
				
				se(quartos[apontador] == "Ocupado"){
					escreva("Quarto já está ocupado")
				}senao{
					quartos[apontador] = "Ocupado;\n"
				}
			}
			
		}




		
		para(inteiro i = 0; i < 20; i++){
			//quartos[0][1] = "1"
			//quartos[i] = "Livre"
			//escreva("segundo for")
			escreva( (i+1) +" - "+ quartos[i])
		
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 2435; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */