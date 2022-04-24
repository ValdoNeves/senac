programa{
	/*
		Ainda em relação aos eventos, o hotel oferece reserva de seu restaurante
		caso o contratante necessite. 
		
		O restaurante está disponível para reservas
		de segunda a sexta das 7hs às 23hs;
		
		sábados e domingos apenas das
		7hs às 15hs.
		
		Monte um algoritmo que receba o dia da semana (em texto)
		(observação: na entrada de dados para dia da semana, desconsidere
		acentos e use letra minúscula. Não é necessário validação para isso no
		código). 
		
		Também receba a hora (número inteiro) e diga se o restaurante
		está indisponível ou disponível.
		
		Quando disponível, receba ainda o nome
		da empresa e mostre na tela a mensagem “Restaurante reservado para
		(nome da empresa): (dia da semana) às (horas)hs”.
			Exemplo 1:
				[Entradas de dados]
				sabado (dia da semana)
				16 (hora)
				[Saída de dados]
				Restaurante indisponível
			Exemplo 2:
				[Entrada de dados]
				segunda (dia da semana)
				13 (hora)
				Lojas Meu Estilo (nome da empresa)
				[Saída de dados]
				Restaurante reservado para Lojas Meu Estilo:
				segunda às 13hs
	*/
	funcao inicio(){
		cadeia empresa
		cadeia diaDaSemana
		inteiro posicao, hora
		cadeia array[7] = {"segunda", "terca","quarta", "quinta", "sexta", "sabado", "domingo"}
		
		escreva("Informe o dia da semana que deseja fazer a reserva: \n")
		leia(diaDaSemana)
		escreva("informa o horario desejado para a reserva:\n")
		leia(hora)
		para(inteiro i = 0 ; i < 7; i++){
			se(array[i] == diaDaSemana ){
				posicao = i
				se(posicao < 5 e posicao >= 0){
					se(hora < 24 e hora > 6){
						escreva("Informe o nome da empresa, por favor: ")
						leia(empresa)
						limpa()
						escreva("Reserva concluida para a empresa "+empresa+", "+array[posicao]+"-feira as "+ hora+" horas\n\n\n")
						
					}senao{
						escreva("De "+array[posicao]+"-feira, o horario de funcionamento é das 7h as 23h\n\n\n")
					}
				}senao{
					se(hora < 16 e hora > 6){
						escreva("Informe o nome da empresa, por favor: ")
						leia(empresa)
						limpa()
						escreva("Reserva concluida para a empresa "+empresa+", "+array[posicao]+" as "+ hora+" horas\n\n\n")
					}senao{
						escreva("De "+array[posicao]+" o horario de funcionamento é das 7h as 15h\n\n\n")
					}
					
				}
			}
			
		}
		
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 2103; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */