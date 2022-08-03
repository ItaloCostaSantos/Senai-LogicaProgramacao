programa
{		
	inclua biblioteca Tipos
	
		inteiro quantidadeProduto, linha, coluna, totalColunas = 4, totalLinhas
		real converteAnual, mediaMensal, quantidadeEstoque, valorAtual, converteValorMedio, valorMedioConvertido
		cadeia nomeProduto, quantidadeAnual, valorMedio, nomeCompra
		cadeia matrizGeral[999][6]
		inteiro desejoContinuacao
		logico achouProduto = falso

		
		
					
		
	funcao inicio(inteiro cadastrarProd)
	{	
	
		escreva("\nSeja bem-vindo a LISTA DE COMPRAS INTELIGENTE!!!")
		escreva("\nAqui você cadastra seus itens e nós te falamos se deve ou não comprar naquele momento. \n\n")
		escreva("Digite [1] para cadastrar produtos: \n")
		leia(cadastrarProd)
		
		
		escolha(cadastrarProd)
		{
			caso 1:
				cadastro()
			pare
			
		}
		
	}
	funcao cadastro()
	{
		
		escreva("\nInforme a QUANTIDADE de produtos que deseja cadastrar nesse momento: \n")
			leia(quantidadeProduto)
		
		para(linha = 0; linha < quantidadeProduto; linha++)
		{
			para(coluna = 0; coluna < totalColunas; coluna++)
			{
				escreva("\nInforme o NOME do produto: \n")
					leia(nomeProduto)
					matrizGeral[linha][coluna] = nomeProduto
					coluna++
				escreva("\nInforme a QUANTIDADE anual que consome: \n")
					leia(quantidadeAnual)
					matrizGeral[linha][coluna] = quantidadeAnual
					coluna++
				escreva("\nInforme a VALOR MÉDIO do produto: \n")
					leia(valorMedio)
					matrizGeral[linha][coluna] = valorMedio
					coluna++
			}
		}

		
		
		para(linha = 0; linha < quantidadeProduto; linha++)
		{		
			converteAnual = Tipos.cadeia_para_real(matrizGeral[linha][1])
			mediaMensal = converteAnual / 12
			escreva("\n\nA média mensal é de: ", mediaMensal)
		}



		para(linha = 0; linha < quantidadeProduto; linha++)
		{
			converteValorMedio = Tipos.cadeia_para_real(matrizGeral[linha][2])
			valorMedioConvertido = converteValorMedio
			escreva("\n\nO valor médio informado para o produto é de: ", valorMedioConvertido)
		}
	}
	funcao converterValor()
	{
		
	}
	funcao decisao_Compra()
	{
		
	}

}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 747; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */