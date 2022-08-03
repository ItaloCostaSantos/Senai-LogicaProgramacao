programa
{
	inteiro vetorInicio[999], vetorFinal[999], num1, num2, cont, somaSequencia, verifica
	real calculo
	
	funcao inicio()
	{	
		escreva("INTERVALO ENTRE NÚMEROS ÍMPARES\n")
		
		escreva("\ninforme o primeiro número: ")
		leia(num1)

		escreva("informe o segundo número: ")
		leia(num2)

		somaSequencia = num2 - num1

		alimentaVetor()
		
		novovetor()

		imprimir()
	}
	
	funcao alimentaVetor()
	{
		para(inteiro i= 0;i <= somaSequencia; i++)
		{
			vetorInicio[i] = num1
			num1++
		}
	}
	
	funcao novovetor()
	{	
		para(inteiro i= 0;i <= somaSequencia; i++)
		{
			calculo = vetorInicio[i]	% 2
			
			se(calculo == 1)
			{
				vetorFinal[i] = vetorInicio[i]
			}
		}
	}
	
	funcao imprimir()
	{
		escreva("\n\nOS NÚMEROS IMPARES SÃO COMPOSTOS POR:\n")
		
		para(inteiro i= 0;i < somaSequencia; i++)
		{
			se(vetorFinal[i] % 2 == 1)
			{
				escreva("")	
			}
			senao
			{	
				i++
				escreva(vetorFinal[i], "\n")
			}
		}	
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 892; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {vetorInicio, 3, 9, 11}-{vetorFinal, 3, 27, 10};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */