Algoritmo "Banco Kalils - Empréstimos e simulações - SOFT 1.2"

Var
   //CADASTRO DA PESSOA
   nome, continuar1, acesso, CPF: caractere
   ano_nasc: inteiro
   //MENU DE NAVEGAÇÃO
   d_menu : inteiro
   //CONSULTA DE CRÉDITO
   renda_consulta : real

   //VALIDAÇÃO DA IDADE DO CLIENTE
Funcao validacao_idade (A : inteiro) : caractere
Var
   acesso1 : caractere
inicio
   A <- 2023 - A
   Se (A >= 18) entao
      acesso <- ("Acesso concedido")
      retorne (acesso)
   Senao
      ACESSO <- ("Acesso Negado! Você é menor de idade")
      retorne (acesso)
   Fimse
Fimfuncao

Inicio
   //TELA INICIAL
   Escreval ("================================================")
   Escreval ("*      SEJA BEM VINDO (A) AO BANCO KALILS      *")
   Escreval ("================================================")
   Escreval ("* Aqui você poderá realizar as seguintes ações *")
   Escreval ("*        1 - Realizar empréstimos              *")
   Escreval ("*        2 - Simular empréstimos               *")
   Escreval ("*        3 - Consultar crédito disponível      *")
   Escreval ("================================================")
   Escreva  ("*          APERTE <ENTER> PARA CONTINUAR       *")
   Leia (continuar1)
   Limpatela
   //TELA DE CADASTRO DO USUÁRIO
   Escreval ("==========================================================")
   Escreval ("Para começar, iremos precisar de algumas informações suas!")
   Escreval ("==========================================================")
   Escreva  (" Qual é o seu nome completo: ")
   Leia (nome)
   Escreval (" Qual é o seu CPF : ")
   Leia (CPF)
   Escreval ("Qual o seu Ano de nascimento: XXX")
   Leia (ano_nasc)
   acesso <- validacao_idade(ano_nasc)
   Escreval (acesso)
   //VALIDAÇÃO DE ACESSO DO USUÁRIO - NEGADO
   Se (acesso = "Acesso Negado! Você é menor de idade") entao
      Repita
         Escreval ("==========================================================")
         Escreval ("                    FINALIZANDO O  SISTEMA")
         Escreval ("==========================================================")
         interrompa
      Ate (acesso = "Acesso concedido")
   Fimse
   //VALIDAÇÃO DE ACESSO DO USUÁRIO - CONCEDIDO
   Escreval ("==========================================================")
   Escreval ("  BEM VINDO AO MENU DE OPÇÕES, COMO PODEMOS AJUDA-LO ?")
   Escreval ("==========================================================")
   Escreval ("Digite [1] se você deseja fazer um empréstimo            *")
   Escreval ("Digite [2] se você deseja simular um empréstimo          *")
   Escreval ("Digite [3] se você deseja consultar o crédito disponível *")
   Escreval ("Digite [4] se você deseja fechar o programa              *")
   Escreval ("=========")
   Leia (d_menu)
   Escreval ("=========")

   Limpatela

   //DESTINOS - MENU
   Escolha (d_menu)
   //FAZER EMPRÉSTIMO
   Caso(1)

   //SIMULAR EMPRÉSTIMO
   Caso(2)

   //CONSULTAR CRÉDITO
   Caso(3)
      Escreval ("==========================================================")
      Escreval ("!   Nós disponibilizamos crédito para nossos clientes    !")
      Escreval ("!         de acordo com a renda mensal declarada         !")
      Escreval ("==========================================================")
      Escreva  ("*          APERTE <ENTER> PARA CONTINUAR                 *")
      Leia (continuar1)

      Limpatela
      Escreval ("================================================================")
      Escreval ("!Declare sua renda mensal para ter acesso ao crédito disponível!")
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