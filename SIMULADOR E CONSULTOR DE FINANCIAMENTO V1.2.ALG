Algoritmo "Banco Kalils - Empr�stimos e simula��es - SOFT 1.2"

Var
   //CADASTRO DA PESSOA
   nome, continuar1, acesso: caractere
   ano_nasc: inteiro
   
//VALIDA��O DA IDADE DO CLIENTE
Funcao validacao_idade (A : inteiro) : caractere
       acesso1 > caractere
inicio
   A <- A - 2023
   Se (A >= 18) entao
      acesso <- ("Acesso concedido")
      retorne (acesso)
   Senao
      ACESSO <- ("Acesso Negado! Voc� � menor de idade")
      retorne (acesso)
   Fimse
Fimfuncao

Inicio
   Escreval ("------------------------------------------------")
   Escreval ("*      SEJA BEM VINDO (A) AO BANCO KALILS      *")
   Escreval ("------------------------------------------------")
   Escreval ("* Aqui voc� poder� realizar as seguintes a��es *")
   Escreval ("*        1 - Realizar empr�stimos              *")
   Escreval ("*        2 - Simular empr�stimos               *")
   Escreval ("*        3 - Consultar cr�dito dispon�vel      *")
   Escreval ("------------------------------------------------")
   Escreva  ("*          APERTE <ENTER> PARA CONTINUAR       *")
   Leia (continuar1)
   Limpatela

   Escreval ("----------------------------------------------------------")
   Escreval ("Para come�ar, iremos precisar de algumas informa��es suas!")
   Escreval ("----------------------------------------------------------")
   Escreva  (" Qual � o seu nome completo: ")
   Leia (nome)
   Escreval ("Qual o seu Ano de nascimento: XXX")
   Leia (ano_nasc)
   acesso <- validacao_idade(ano_nasc)
   Escreval (acesso)

Fimalgoritmo