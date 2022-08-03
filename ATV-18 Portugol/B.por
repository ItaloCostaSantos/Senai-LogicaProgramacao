programa
{
	
	funcao inicio()
	{
		inteiro v[10]
		
		para(inteiro i = 0; i < 10; i++)
		{
		escreva("Informe o ",i+1,"º valor: ")
		leia(v[i])		
		}
		limpa()
		escreva("Números ímpares: ")
		para(inteiro i = 0; i < 10; i++)
		{		
			se(v[i] %  2 == 1)
			{
				escreva(v[i],"; ")	
			}
		}
		escreva("\n")
	}	
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 313; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */