programa{
	/*
		Expanda o algoritmo anterior para que, ao final, mostre o nome e a idade
		do hóspede mais velho e também o nome e a idade do mais jovem.
		Também adapte para que, ao invés de encerrar com a palavra “PARE”,
		pergunte ao usuário se ele deseja continuar a informar os dados (“S” ou
		“N”) e, caso digite “N”, encerre a execução.
			Exemplo:
				[Entrada de dados]
				100 (R$ valor padrão da diária)
				[Entrada de dados]
				Adolfo (nome do hóspede)
				50 (idade)
				[Saída de dados]
				Deseja continuar? (S/N)
				[Entrada de dados]
				S (continuar ou não a execução)
				Murilo (nome do hóspede)
				1 (idade)
				[Saída de dados]
				Murilo possui gratuidade
				[Saída de dados]
				Deseja continuar? (S/N)
				[Entrada de dados]
				S (continuar ou não a execução)
				[Entrada de dados]
				Joaquim (nome do hóspede)
				85 (idade)
				[Saída de dados]
				Joaquim paga meia
				[Saída de dados]
				Deseja continuar? (S/N)
				[Entrada de dados]
				N (continuar ou não a execução)[Saída de dados]
				Total de hospedagens: R$150; 1 gratuidade(s); 1 meia(s)
				O hóspede mais velho é Joaquim com 85 ano(s)
				O hóspede mais jovem é Murilo com 1 ano(s)
	
	*/
	
	funcao inicio(){
		cadeia hospede = ""
		cadeia finalizar = ""
		cadeia nomeIdoso = ""
		cadeia nomeCrianca = ""
		inteiro idadeIdoso = 0
		inteiro idadeCrianca = 10000
		inteiro idadeAtual = 0
		
		logico flagContinue
		real diaria
		inteiro idade = 0
		inteiro contador = 0
		inteiro contadorGratuidade = 0
		inteiro contadorMeia = 0

		
		escreva("Informe o valor padrão da diaria: R$")
		leia(diaria)
		real diariaAtual = diaria

		enquanto(hospede != "PARE" ){
			flagContinue = verdadeiro
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
					se(contador >= contadorGratuidade e contadorMeia == 0){
						diaria = diariaAtual/2
					}senao{
						diaria = diaria + (diariaAtual / 2)
						
					}
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
			}

			se(contador == 0){
				nomeIdoso = hospede
				idadeIdoso = idade
				nomeCrianca = hospede
				idadeCrianca = idade
			}senao{
				escreva("laco idoso 1\n")
				se(idade > idadeIdoso e idade > idadeAtual){
					
						nomeIdoso = hospede
						idadeIdoso = idade
						//idadeMax = idade
						escreva("laco idoso 2\n")
					
					
				}senao{
					escreva("laco crianca 1\n")
					se(idade < idadeCrianca e idade < idadeAtual){
					
						nomeCrianca = hospede
						idadeCrianca = idade
					//	idadeMin = idadeAtual
						escreva("laco crianca 2\n")
						
					}
				}
			}

			

					idadeAtual = idade
			
						
			
			contador++
			
			enquanto(flagContinue){
					escreva("\nDeseja continuar? (S/N)")
					leia(finalizar)
					se(finalizar == "S"){
						hospede = "continua"
						//escreva(finalizar + "  continuar loop")
						flagContinue = falso
					}
					se(finalizar == "N"){
						hospede = "PARE"
						//escreva(finalizar + "  parar loop")
						flagContinue = falso
					}
					//caso qualquer outro valor seja digitado o loop ficara infinitamente perguntando
				}
			
			
		}
		se(contadorGratuidade == contador e contadorMeia == 0){
			limpa()
			escreva("\n\nReserva negada, no minimo um adulto deve ser o responsável")
			escreva("\n\nTotal de hospedagens: R$0,00 ; "+ contadorGratuidade+" gratuidade(s) e "+ contadorMeia +" meia(s)")
			escreva("\ntotalizando " +contador+" hospede(s)")
			escreva("\nO hóspede mais velho é "+nomeIdoso+" com "+idadeIdoso+" ano(s)")
			escreva("\nO hóspede mais jovem é "+nomeCrianca+" com "+idadeCrianca+" ano(s)\n\n")
			
		}senao{
			limpa()
			escreva("\n\nTotal de hospedagens: R$"+diaria+"; "+ contadorGratuidade+" gratuidade(s) e "+ contadorMeia +" meia(s)")
			escreva("\ntotalizando " +contador+" hospede(s)")
			escreva("\nO hóspede mais velho é "+nomeIdoso+" com "+idadeIdoso+" ano(s)")
			escreva("\nO hóspede mais jovem é "+nomeCrianca+" com "+idadeCrianca+" ano(s)\n\n")
			
			
		}
		
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 2044; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */