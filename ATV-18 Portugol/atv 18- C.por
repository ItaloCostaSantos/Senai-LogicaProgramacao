//Algoriimo Que leia até 50 valores inteiros e positivos e em seguida mostre o maior valor, o menor valor e a média entre o maior e menor valores.
programa
{
	
	funcao inicio()
	{
		inteiro valorInt[50], maior, menor, media, verifica
		escreva("VERIFICAÇÃO DE MAIOR E MENOR\n\nQuantos numeros deseja verificar?\n")
		leia(verifica)
		limpa()
		para(inteiro i=0; i < verifica; i++)
		{
			escreva("Informe o ",i+1,"º número: ")
			leia(valorInt[i])		
		}
		limpa()
		maior = valorInt[0]
		menor = valorInt[0]
		
		para(inteiro i=0; i < verifica; i++)
		{
			se(maior < valorInt[i])
			{
				maior = valorInt[i]
			}
			se(menor > valorInt[i])
			{
				menor = valorInt[i]
			}	
		}
		
		media = (maior + menor) / 2
		
		escreva("Menor número: ", menor,"\nMaior número: ",maior,"\nMédia dos Números: ",media,"\n")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 683; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {valorInt, 7, 10, 8}-{maior, 7, 24, 5}-{menor, 7, 31, 5}-{i, 11, 15, 1}-{i, 20, 15, 1};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */