Algoritmo "Simulador e Consultor de Financiamento"

Var
   operacao : caractere
   renda_consulta, renda, valor_pagamento, valor_parcelas : real
   numero_parcelas, valor_emp : inteiro



Inicio
   Escreval ("--------------------------------------------------------")
   Escreval ("                Bem vindo ao Banco Kalils")
   Escreval ("--------------------------------------------------------")
   Escreval ("Descrição: Aqui oferecemos empréstimos de acordo com o seu crédito")
   Escreval ("--------------------------------------------------------")
   Escreval ("                          MENU")
   Escreval ("--------------------------------------------------------")
   Escreval ("[1] Simular empréstimo")
   Escreval ("[2] Consultar crédito")
   Escreval ("[3] Cancelar")
   Leia (operacao)
   Escolha (operacao)
   Caso "1"
      Escreva ("Para começar, me informe qual a sua renda mensal:")
      Leia (renda)
      Se (renda <= 1500) entao
         Escreval ("Você possui um crédito de até R$1000,00 para o empréstimo")
         Escreva ("Qual valor de empréstimo você gostaria de simular ?")
         Leia (valor_emp)
         enquanto (valor_emp > 1000) faca
            Escreval ("Valor para empréstimo idisponível, escolha um valor de crédito disponível")
            Escreval ("Qual valor de empréstimo você gostaria de simular ?")
            Leia (valor_emp)
         Fimenquanto
         Escreval ("Aos nossos empréstimos é aplicado 20% de juros no valor de quitação do empréstimo")
         Escreval ("Você pode parcelar o pagamento em até 12X!!!!")
         Escreval ("Em quantas parcelas você gostaria de parcela o pagamento?")
         Leia (numero_parcelas)
         enquanto (numero_parcelas > 12) faca
            Escreval ("Número de parcelas indisponível, escolha novamente :")
            Leia (numero_parcelas)
         Fimenquanto
         valor_pagamento <- ((valor_emp * 20) / 100) + valor_emp
         Valor_parcelas <- (valor_pagamento + valor_emp) / numero_parcelas
      Senao
         Escreval ("Você possui um crédito de até R$2000,00 para o empréstimo")
         Escreva ("Qual valor de empréstimo você gostaria de simular ?")
         Leia (valor_emp)
         Escreval ("Aos nossos empréstimos é aplicado 20% de juros no valor de quitação do empréstimo")
         Escreval ("Você pode parcelar o pagamento em até 12X!!!!")
         Escreval ("Em quantas parcelas você gostaria de parcela o pagamento?")
         Leia (numero_parcelas)
         enquanto (numero_parcelas > 12) faca
            Escreval ("Número de parcelas indisponível, escolha novamente :")
            Leia (numero_parcelas)
         Fimenquanto
         valor_pagamento <- ((valor_emp * 20) / 100) + valor_emp
         Valor_parcelas <- valor_pagamento / numero_parcelas
      Fimse
   Caso "2"
      Escreva ("Informe a sua renda mensal:")
      Leia (renda_consulta)
      Se (renda_consulta <= 1500) entao
         Escreval ("Você possui um crédito de R$1000,00 para empréstimo")
         Escreval ("Consulta finalizada!")
      Senao
         Escreval ("Você possui um crédito de R$2000,00 para empréstimo.")
         Escreval ("Consulta finalizada!")
      Fimse
   Caso "3"
      Escreval ("Fim do atendimento, Adeus!")
   Fimescolha


Fimalgoritmo