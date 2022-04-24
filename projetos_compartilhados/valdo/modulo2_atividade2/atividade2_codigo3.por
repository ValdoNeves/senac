programa{
	/*
		Escreva um algoritmo que receba o valor padrão de uma diária. Em
		seguida, receba vários nomes de hóspedes e suas idades. Caso o
		hóspede seja menor que 4 anos, ele não paga hospedagem – nesses
		casos mostre na tela “(Nome do hóspede) possui gratuidade”; hóspedes
		com mais de 80 anos pagam metade – mostre na tela “(Nome do
		hóspede) paga meia”. O usuário informará hóspedes até digitar a palavra
		“PARE”, que interrompe a entrada de dados. Ao fim, mostre a quantidade
		de gratuidades, a quantidade de meias hospedagens e o valor total,
		considerando todos os hóspedes informados.
			Exemplo:
				[Entrada de dados]
				100 (R$ valor padrão da diária)
				[Entrada de dados]
				Adolfo (nome do hóspede)
				50 (idade)
				Murilo (nome do hóspede)
				1 (idade)
				[Saída de dados]
				Murilo possui gratuidade
				[Entrada de dados]
				Joaquim (nome do hóspede)
				85 (idade)
				[Saída de dados]
				Joaquim paga meia
				[Entrada de dados]
				PARE (nome do hóspede)
				[Saída de dados]
				Total de hospedagens: R$150; 1 gratuidade(s); 1 meia(s)
	
	*/
	
	funcao inicio(){
		cadeia hospede = ""
		real diaria
		inteiro idade
		inteiro contador = 0
		inteiro contadorGratuidade = 0
		inteiro contadorMeia = 0
		
		escreva("Informe o valor padrão da diaria: R$")
		leia(diaria)
		real diariaAtual = diaria

		enquanto(hospede != "PARE" ){
			escreva("\n\nInforme o nome do hospede: ")
			leia(hospede)
			se(hospede != "PARE"){
				escreva("Infome qual a idade de "+ hospede+ " : ")
				leia(idade)
				se(idade >= 0 e idade < 5){
					limpa()
					diaria = diaria + 0
					escreva("\n"+hospede +" possui gratuidade\n\n")
					contadorGratuidade++
				}
				se(idade > 80){
					diaria = diaria + (diariaAtual / 2)
					limpa()
					escreva("\n"+hospede +" paga meia\n\n")
					contadorMeia++
				}
				se(idade <= 80 e idade >= 5){
					se(contador == 0){
						diaria = diariaAtual
						
					}
					senao{
						diaria = diaria + diariaAtual
						
					}
				}
				contador++
			}
			
			
		}

		se(contadorGratuidade == contador e contadorMeia == 0){
			escreva("\n\nReserva negada, no minimo um adulto deve ser o responsável")
			escreva("\n\nTotal de hospedagens: R$ 0,00 ; "+ contadorGratuidade+" gratuidade(s) e "+ contadorMeia +" meia(s),\ntotalizando " +contador+" hospede(s)\n\n")
		}senao{
			escreva("\n\nTotal de hospedagens: R$"+diaria+"; "+ contadorGratuidade+" gratuidade(s) e "+ contadorMeia +" meia(s),\ntotalizando " +contador+" hospede(s)\n\n")
		}
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 2163; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */