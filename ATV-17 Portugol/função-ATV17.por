programa
{
	inclua biblioteca Tipos
	
		inteiro quantidadeProduto, linha, coluna, totalColunas = 4, totalLinhas, escolhaUsuario
		real converteAnual, mediaMensal, quantidadeEstoque, valorAtual, converteValorMedio, valorMedioConvertido
		cadeia nomeProduto, quantidadeAnual, valorMedio, nomeCompra
		cadeia matrizGeral[999][6]
		inteiro desejoContinuacao
		logico achouProduto = falso
		logico naoAchouProduto = falso
		
	funcao inicio()
	{
		escreva("\nSeja bem-vindo a LISTA DE COMPRAS INTELIGENTE!!!")
		escreva("\nAqui você cadastra seus itens e nós te falamos se deve ou não comprar naquele momento.\n")
		
		menu_interacao()
	}
	
	funcao menu_interacao()
	{
		escreva("\nO que deseja fazer?\n\n")
		escreva(" Tecle [1] para cadastrar produtos!\n Tecle [2] para comprar produtos já cadatrados!\n Tecle [3] para finalizar sistema!\n")
		leia(escolhaUsuario)
		
		 escolha(escolhaUsuario)
		 {
		 	caso 1:
		 	limpa() 
		 		cadastro()
		 	pare
		 	
		 	caso 2:
		 	limpa()
		 		compraCliente()
		 	pare
		 	
		 	caso 3:
		 	limpa()
		 		sistemaFinaliza()
		 	pare
		 	caso contrario:
		 	limpa()
		 		escreva("\nOpção Inválida!!! Tente novamente.\n")
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
		menu_interacao()
	}

	
	funcao compraCliente()
	{
		escreva ("Qual o produto que deseja comprar??? \n")
		leia(nomeCompra)
				
		para (linha = 0; linha < quantidadeProduto; linha++)
		{
			para(coluna = 0; coluna < totalColunas; coluna++)
			{
				se (matrizGeral[linha][coluna] == nomeCompra)
				{
					achouProduto = verdadeiro
				}		
			}
			
		}
		
		se(achouProduto == verdadeiro)
		{
			achouProduto = falso
			escreva("\nProduto já cadastrado. \n")
			escreva("Informe a QUANTIDADE desse produto que você possui no ESTOQUE: \n")
				leia(quantidadeEstoque)
			escreva("Informe o VALOR ATUAL do produto: \n")
				leia(valorAtual)
			limpa()
			para(linha = 0; linha < quantidadeProduto; linha++)
			{		
				converteAnual = Tipos.cadeia_para_real(matrizGeral[linha][1])
				mediaMensal = converteAnual / 12
				converteValorMedio = Tipos.cadeia_para_real(matrizGeral[linha][2])
				valorMedioConvertido = converteValorMedio
				
				se(quantidadeEstoque < mediaMensal e valorAtual < valorMedioConvertido)
				{
					escreva("Você está com estoque BAIXO do produto.\n")
					escreva("Além disso o produto está com VALOR ACESSÍVEL.\n")
					escreva("Você deve COMPRAR O PRODUTO AGORA MESMO.\n")
					pare
				}
				senao se(quantidadeEstoque < mediaMensal e valorAtual == valorMedioConvertido)
				{
					escreva("Você está com estoque BAIXO do produto.\n")
					escreva("O produto está com VALOR MÉDIO ESTÁVEL.\n")
					escreva("Você deve COMPRAR O PRODUTO agora mesmo.\n")
					pare
				}
				senao se(quantidadeEstoque < mediaMensal e valorAtual > valorMedioConvertido)
				{
					escreva("Você está com estoque BAIXO do produto.\n")
					escreva("O produto está com VALOR MÉDIO ACIMA do geralmente praticado.\n")
					escreva("Você deve COMPRAR O PRODUTO assim que for POSSÍVEL dentro das condições financeiras que possui.\n")
					pare
				}
				senao se(quantidadeEstoque > mediaMensal e valorAtual < valorMedioConvertido)
				{
					escreva("Você está com estoque ALTO do produto.\n")
					escreva("O produto está com VALOR MÉDIO ABAIXO do geralmente praticado.\n")
					escreva("Dessa forma, recomendamos COMPRAR O PRODUTO para ECONOMIZAR recursos financeiros.\n")
					pare
				}
				senao se(quantidadeEstoque > mediaMensal e valorAtual == valorMedioConvertido)
				{
					escreva("Você está com estoque ALTO do produto.\n")
					escreva("O produto está com VALOR MÉDIO ESTÁVEL do geralmente praticado.\n")
					escreva("Dessa forma, você SÓ DEVE COMPRAR o produto se houver alguma necessidade específica.\n")
					pare
				}
				senao se(quantidadeEstoque > mediaMensal e valorAtual > valorMedioConvertido)
				{
					escreva("Você está com estoque ALTO do produto.\n")
					escreva("O produto está com VALOR MÉDIO ACIMA do geralmente praticado.\n")
					escreva("Dessa forma, recomendamos NÃO COMPRAR O PRODUTO.\n")
					pare
				}
				senao se(quantidadeEstoque == mediaMensal e valorAtual < valorMedioConvertido)
				{
					escreva("Você está com estoque NORMAL do produto.\n")
					escreva("O produto está com VALOR MÉDIO BAIXO em relação ao geralmente praticado.\n")
					escreva("Dessa forma, recomendamos COMPRAR O PRODUTO para ECONOMIZAR recursos financeiros.\n")
					pare
				}
				senao se(quantidadeEstoque == mediaMensal e valorAtual == valorMedioConvertido)
				{
					escreva("Você está com estoque NORMAL do produto.\n")
					escreva("O produto está com VALOR MÉDIO ESTÁVEL em relação ao geralmente praticado.\n")
					escreva("Dessa forma, você SÓ DEVE COMPRAR o produto se houver alguma necessidade específica.\n")
					pare
				}
				senao se(quantidadeEstoque == mediaMensal e valorAtual > valorMedioConvertido)
				{
					escreva("Você está com estoque NORMAL do produto.\n")
					escreva("O produto está com VALOR MÉDIO ACIMA do valor geralmente praticado.\n")
					escreva("Dessa forma, você NÃO DEVE COMPRAR o produto.\n")
					pare
				}
			}			
		}
		
		senao
		{
			escreva("\nProduto NÃO cadastrado. Primeiro você deve cadastrar o produto. \n")
		} 
		menu_interacao()
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
 * @POSICAO-CURSOR = 5942; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {totalColunas, 5, 44, 12}-{matrizGeral, 8, 9, 11};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */