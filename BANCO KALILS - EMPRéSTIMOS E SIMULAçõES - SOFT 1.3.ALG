Algoritmo "Banco Kalils - Empr�stimos e simula��es - SOFT 1.2"

Var
   //CADASTRO DA PESSOA
   nome, continuar1, acesso, CPF: caractere
   ano_nasc: inteiro
   //MENU DE NAVEGA��O
   d_menu : inteiro
   //CONSULTA DE CR�DITO
   renda_consulta : real

   //VALIDA��O DA IDADE DO CLIENTE
Funcao validacao_idade (A : inteiro) : caractere
Var
   acesso1 : caractere
inicio
   A <- 2023 - A
   Se (A >= 18) entao
      acesso <- ("Acesso concedido")
      retorne (acesso)
   Senao
      ACESSO <- ("Acesso Negado! Voc� � menor de idade")
      retorne (acesso)
   Fimse
Fimfuncao

Inicio
   //TELA INICIAL
   Escreval ("================================================")
   Escreval ("*      SEJA BEM VINDO (A) AO BANCO KALILS      *")
   Escreval ("================================================")
   Escreval ("* Aqui voc� poder� realizar as seguintes a��es *")
   Escreval ("*        1 - Realizar empr�stimos              *")
   Escreval ("*        2 - Simular empr�stimos               *")
   Escreval ("*        3 - Consultar cr�dito dispon�vel      *")
   Escreval ("================================================")
   Escreva  ("*          APERTE <ENTER> PARA CONTINUAR       *")
   Leia (continuar1)
   Limpatela
   //TELA DE CADASTRO DO USU�RIO
   Escreval ("==========================================================")
   Escreval ("Para come�ar, iremos precisar de algumas informa��es suas!")
   Escreval ("==========================================================")
   Escreva  (" Qual � o seu nome completo: ")
   Leia (nome)
   Escreval (" Qual � o seu CPF : ")
   Leia (CPF)
   Escreval ("Qual o seu Ano de nascimento: XXX")
   Leia (ano_nasc)
   acesso <- validacao_idade(ano_nasc)
   Escreval (acesso)
   //VALIDA��O DE ACESSO DO USU�RIO - NEGADO
   Se (acesso = "Acesso Negado! Voc� � menor de idade") entao
      Repita
         Escreval ("==========================================================")
         Escreval ("                    FINALIZANDO O  SISTEMA")
         Escreval ("==========================================================")
         interrompa
      Ate (acesso = "Acesso concedido")
   Fimse
   //VALIDA��O DE ACESSO DO USU�RIO - CONCEDIDO
   Escreval ("==========================================================")
   Escreval ("  BEM VINDO AO MENU DE OP��ES, COMO PODEMOS AJUDA-LO ?")
   Escreval ("==========================================================")
   Escreval ("Digite [1] se voc� deseja fazer um empr�stimo            *")
   Escreval ("Digite [2] se voc� deseja simular um empr�stimo          *")
   Escreval ("Digite [3] se voc� deseja consultar o cr�dito dispon�vel *")
   Escreval ("Digite [4] se voc� deseja fechar o programa              *")
   Escreval ("=========")
   Leia (d_menu)
   Escreval ("=========")

   Limpatela

   //DESTINOS - MENU
   Escolha (d_menu)
   //FAZER EMPR�STIMO
   Caso(1)

   //SIMULAR EMPR�STIMO
   Caso(2)

   //CONSULTAR CR�DITO
   Caso(3)
      Escreval ("==========================================================")
      Escreval ("!   N�s disponibilizamos cr�dito para nossos clientes    !")
      Escreval ("!         de acordo com a renda mensal declarada         !")
      Escreval ("==========================================================")
      Escreva  ("*          APERTE <ENTER> PARA CONTINUAR                 *")
      Leia (continuar1)

      Limpatela
      Escreval ("================================================================")
      Escreval ("!Declare sua renda mensal para ter acesso ao cr�dito dispon�vel!")
      Escreval ("================================================================")
      Escreval (nome:15,"-------------------------------", CPF)
      Escreva ("RENDA MENSAL DECLARADA:")
      leia (renda_consulta)
   //FECHAR SISTEMA
   Caso(4)
      Escreval ("==========================================================")
      Escreval ("                  FINALIZANDO O  SISTEMA")
      Escreval ("==========================================================")
      interrompa
   Fimescolha
Fimalgoritmo