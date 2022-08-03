programa
{

     funcao inicio()
     {
          cadeia produto[10]
          inteiro quantidade[10]
          inteiro quantProd
          escreva("Quantos produtos deseja cadastrar? ")
          leia(quantProd)
          para (inteiro cont = 0; cont < quantProd; cont = cont + 1) {
               escreva("informe o produto que deseja cadastrar: ")
               leia(produto[cont])
               escreva("informe a quantidade do produto: ")
               leia(quantidade[cont])
               limpa()
          }
          limpa()
          escreva("lista de produtos cadastrados: \n")
          para (inteiro cont = 0; cont < quantProd; cont = cont + 1) {
               escreva("-", produto[cont], "  ", quantidade[cont], "\n")
          }
     }
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 279; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */