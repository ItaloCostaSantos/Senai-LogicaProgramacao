//O sistema deve solicitar ao usuário que informe um número e em seguida deve calcular e exibir a tabuada de multiplicação de 1 a 10 do número digitado
//pelo usuário
programa
{
	funcao inicio()
	{
		inteiro num, v=1
		
		escreva("TABUADA DE MULTIPLICAÇÃO\n\n")
		escreva("Informe um numero que deseja verificar a tabuada: ")
		leia(num)
		escreva("\n")
		faca
		{
			escreva(num,"x", v, " = ", v*num,"\n")
			v = v+1
		}
		enquanto(v <= 10)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 446; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */