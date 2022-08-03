programa
{
	cadeia nomeF, cargo
	real salarioBruto, valorLiq, valorDescont, inss
	
	funcao inicio()
	{	
		escreva("Informe o nome do funcionário: ")
		leia(nomeF)

		escreva("Informe o salário bruto do funcionário: ")
		leia(salarioBruto)

		escreva("Cargo de ocupação na empresa: ")
		leia(cargo)

		se(salarioBruto <= 1212.00)
		{
			inss = (salarioBruto * 7.5) / 100
			valorLiq = salarioBruto - inss
			limpa()	
			escreva("Nome: ",nomeF,"\nCargo: ",cargo,"\nPercentual de desconto: 7.5%", "\nDesconto INSS: R$ ",inss,"\nValor Líquido: R$ ",valorLiq,"\n")
		}	
		senao se(salarioBruto >= 1212.00 e salarioBruto <= 2427.35)
		{
			inss = (salarioBruto * 9) / 100
			valorLiq = salarioBruto - inss
			limpa()	
			escreva("Nome: ",nomeF,"\nCargo: ",cargo,"\nPercentual de desconto: 9%", "\nDesconto INSS: R$ ",inss,"\nValor Líquido: R$ ",valorLiq,"\n")	
		}
		senao se(salarioBruto >= 2427.35 e salarioBruto <= 3641.03)
		{
			inss = (salarioBruto * 12) / 100
			valorLiq = salarioBruto - inss
			limpa()	
			escreva("Nome: ",nomeF,"\nCargo: ",cargo,"\nPercentual de desconto: 12%", "\nDesconto INSS: R$ ",inss,"\nValor Líquido: R$ ",valorLiq,"\n")
		}
		senao se(salarioBruto >= 3641.03 e salarioBruto < 7087.22)
		{
			inss = (salarioBruto * 14) / 100
			valorLiq = salarioBruto - inss
			limpa()	
			escreva("Nome: ",nomeF,"\nCargo: ",cargo,"\nPercentual de desconto: 14%", "\nDesconto INSS: R$ ",inss,"\nValor Líquido: R$ ",valorLiq,"\n")
		}
		senao 
		{
			escreva("valores superiores á R$7.087,22")
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1510; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */