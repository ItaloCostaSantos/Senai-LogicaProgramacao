programa
{
     inclua biblioteca Matematica --> mat

     funcao inicio()
     {
          inteiro quantCad
          real nota1[10]
          real nota2[10]
          real nota3[10]
          cadeia nomeA[10]
          real mediaN
          escreva("Quantos alunos serão cadastrados? ")
          leia(quantCad)
          para (inteiro i = 0; i < quantCad; i = i + 1) {
               escreva("Informe o nome do aluno: ")
               leia(nomeA[i])
               escreva("Informe a primeira nota do aluno: ")
               leia(nota1[i])
               escreva("Informe a segunda nota do aluno: ")
               leia(nota2[i])
               escreva("Informe a terceira nota do aluno: ")
               leia(nota3[i])
               limpa()
          }
          para (inteiro i = 0; i < quantCad; i = i + 1) {
               escreva("\nNome do aluno: ", nomeA[i], "\n")
               mediaN = (nota1[i] + nota2[i] + nota3[i]) / 3
               mediaN = mat.arredondar(mediaN, 1)
               se (mediaN >= 6) {
                    escreva("\n1ª Prova: ", nota1[i], " \n2ª prova: ", nota2[i], " \n3º prova: ", nota3[i], "\nMédia final: ", mediaN, "\nSituação: APROVADO\n")
               }
               senao {
                    se (mediaN <= 6) {
                         escreva("\n1ª Prova: ", nota1[i], " \n2ª prova: ", nota2[i], " \n3º prova: ", nota3[i], "\nMédia final: ", mediaN, "\nSituação: REPROVADO\n")
                    }
               }
          }
     }
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 232; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */