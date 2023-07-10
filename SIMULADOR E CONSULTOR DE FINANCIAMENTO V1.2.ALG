Algoritmo "Banco Kalils - Empréstimos e simulações - SOFT 1.2"

Var
   //CADASTRO DA PESSOA
   nome, continuar1, acesso: caractere
   ano_nasc: inteiro
   
//VALIDAÇÃO DA IDADE DO CLIENTE
Funcao validacao_idade (A : inteiro) : caractere
       acesso1 > caractere
inicio
   A <- A - 2023
   Se (A >= 18) entao
      acesso <- ("Acesso concedido")
      retorne (acesso)
   Senao
      ACESSO <- ("Acesso Negado! Você é menor de idade")
      retorne (acesso)
   Fimse
Fimfuncao

Inicio
   Escreval ("------------------------------------------------")
   Escreval ("*      SEJA BEM VINDO (A) AO BANCO KALILS      *")
   Escreval ("------------------------------------------------")
   Escreval ("* Aqui você poderá realizar as seguintes ações *")
   Escreval ("*        1 - Realizar empréstimos              *")
   Escreval ("*        2 - Simular empréstimos               *")
   Escreval ("*        3 - Consultar crédito disponível      *")
   Escreval ("------------------------------------------------")
   Escreva  ("*          APERTE <ENTER> PARA CONTINUAR       *")
   Leia (continuar1)
   Limpatela

   Escreval ("----------------------------------------------------------")
   Escreval ("Para começar, iremos precisar de algumas informações suas!")
   Escreval ("----------------------------------------------------------")
   Escreva  (" Qual é o seu nome completo: ")
   Leia (nome)
   Escreval ("Qual o seu Ano de nascimento: XXX")
   Leia (ano_nasc)
   acesso <- validacao_idade(ano_nasc)
   Escreval (acesso)

Fimalgoritmo