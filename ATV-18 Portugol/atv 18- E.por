 /*Crie um algoritmo que realize uma pesquisa de satisfação do cliente. O cliente terá opção de não participar da pesquisa ou de 
 participar e responder se o serviço prestado é “péssimo ou ruim”, “satisfatório” ou “excelente ou ótimo”. Ao término o sistema 
 deverá exibir o quantitativo de respostas obtidas em cada alternativa e o percentual que isso representa em relação ao total de 
 clientes que participaram da pesquisa.*/
programa
{
	inteiro escolhaMenu, escolhaDeNao
	
	funcao inicio()
	{
		escreva("PESQUISA DE SATISFAÇÃO DO CLIENTE\n\nVocê tem a opção de responder ou não!!!\n\n")
		decisaoPesquisa()
	}
	funcao menuEscolha()
	{
		//limpa()
		escreva("\nO que deseja fazer?\n")
		escreva("\nTecle [1] para iniciar pesquisa!!!\nTecle [2] para finalizar pesquisa!!\nTecle [3] para fechar programa!\n")
		leia(escolhaMenu)
		escolha(escolhaMenu)
		{
			caso 1:
			limpa()
			voto()
			pare
			caso 2:
			limpa()
			saldoVoto()
			pare
			caso 3:
			limpa()
			sistemaFinaliza()
			pare
			caso contrario:
			limpa()
			escreva("Informações incorretas, Tente novamente!!!\n")
		}
	}
	funcao voto()
	{
		
	}
	funcao saldoVoto()
	{
		voto()
	}
	funcao decisaoPesquisa()
	{
		escreva("Digite [1] para responder a pequisa ou digite [2] para não responder\n")
		leia(escolhaDeNao)
		escolha(escolhaDeNao)
		{
			caso 1:
			menuEscolha()
			pare
			caso 2:
			sistemaFinaliza()
			pare
			caso contrario:
			escreva("Você digitou algo errado, Tente novamente!!!")
		}
		
		menuEscolha()
	}
	funcao sistemaFinaliza()
	{
		inteiro contador
				
		para(contador = 0; contador < 33; contador++)
		{
		  escreva ("-")
		}
		
		escreva ("\nSistema finalizado com sucesso!!!\n")
		
		para(contador = 0; contador < 33; contador++)
		{
		  escreva ("-")
		}

		escreva("\n")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 645; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */