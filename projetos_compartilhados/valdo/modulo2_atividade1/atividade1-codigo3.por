programa{
	/*
		Ainda relativo ao atendimento de eventos, o hotel necessita de uma
		funcionalidade que indique qual de seus dois auditórios é o mais
		adequado para um evento. 
		
		O auditório Alfa conta com 150 lugares e
		espaço para até 70 cadeiras adicionais. 
		
		O auditório Beta conta com 350
		lugares, sem espaço para mais cadeiras. 
		
		Desenvolva um algoritmo que
		receba o número de convidados do evento e faça uma verificação sobre
		a quantidade: se for maior que 350 ou se for menor que zero, mostre a
		mensagem “Número de convidados inválido”. 
		
		Se o valor informado é
		válido, mostre na tela qual dos auditórios é o mais adequado.
		
		No caso do
		auditório Alfa, calcule ainda quantas cadeiras adicionais serão
		necessárias, observando o limite citado acima.
			Exemplo:
				[Entrada de dados]
				190 convidados (número de convidados)
				[Saída de dados]
				Use o auditório Alfa
				Inclua mais 40 cadeiras
	
	*/
	
	funcao inicio(){
		inteiro convidados, lotacaoMinAlfa, lotacaoMaxAlfa, lotacaoBeta, diferenca
		lotacaoMinAlfa = 150
		lotacaoMaxAlfa = 220
		diferenca = lotacaoMaxAlfa - lotacaoMinAlfa
		lotacaoBeta = 350
		escreva("Para identificarmos o melhor auditório para seu evento, digite o número de convidados: ")
		leia(convidados)

		se(convidados > 0 e (convidados <= lotacaoMinAlfa ou convidados <= lotacaoMaxAlfa)){
			escreva(convidados+" convidados\n")
			inteiro resultado = lotacaoMaxAlfa - convidados
			inteiro adicionar = diferenca - resultado
			escreva("Use o auditório Alfa\n")
			se(convidados > lotacaoMinAlfa e resultado > -1){
				
				escreva("Inclua mais "+adicionar+" cadeiras\n")
			}
		}
		se(convidados <= lotacaoBeta e convidados > lotacaoMaxAlfa){
			escreva(convidados+" convidados\n")
			escreva("Use o auditório Beta\n")
		}
		se(convidados > lotacaoBeta){
			escreva("lotacao maxima de "+lotacaoBeta+ "cadeiras")
		}
		se(convidados <= 0){
			escreva("Digite um valor valido por favor")
		}
		
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1873; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */