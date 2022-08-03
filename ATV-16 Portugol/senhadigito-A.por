programa
{

     funcao inicio()
     {
          inteiro quantDigito
          cadeia senha[20]
          escreva("Sua senha terá quantos digitos? ")
          leia(quantDigito)
          se (quantDigito >= 5) {
               escreva("Tecle ENTER após cada caracter digitado!!!\n")
               para (inteiro i = 0; i < quantDigito; i = i + 1) {
                    escreva("Digite sua nova senha: ")
                    leia(senha[i])
               }
               limpa()
               escreva("Sua nova senha é: ")
               para (inteiro i = 0; i < quantDigito; i = i + 1) {
                    escreva(senha[i])
               }
               escreva("\n")
          }
          senao {
               escreva("Sua senha deve ter no mínimo 5 caracteres, Tente novamente!!!")
          }
     }
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 466; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {i, 12, 29, 1}-{i, 18, 29, 1};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */