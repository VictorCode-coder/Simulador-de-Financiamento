Algoritmo "Simulador e Consultor de Financiamento"

Var
   operacao : caractere
   renda_consulta, renda, valor_pagamento, valor_parcelas : real
   numero_parcelas, valor_emp : inteiro



Inicio
   Escreval ("--------------------------------------------------------")
   Escreval ("                Bem vindo ao Banco Kalils")
   Escreval ("--------------------------------------------------------")
   Escreval ("Descri��o: Aqui oferecemos empr�stimos de acordo com o seu cr�dito")
   Escreval ("--------------------------------------------------------")
   Escreval ("                          MENU")
   Escreval ("--------------------------------------------------------")
   Escreval ("[1] Simular empr�stimo")
   Escreval ("[2] Consultar cr�dito")
   Escreval ("[3] Cancelar")
   Leia (operacao)
   Escolha (operacao)
   Caso "1"
      Escreva ("Para come�ar, me informe qual a sua renda mensal:")
      Leia (renda)
      Se (renda <= 1500) entao
         Escreval ("Voc� possui um cr�dito de at� R$1000,00 para o empr�stimo")
         Escreva ("Qual valor de empr�stimo voc� gostaria de simular ?")
         Leia (valor_emp)
         enquanto (valor_emp > 1000) faca
            Escreval ("Valor para empr�stimo idispon�vel, escolha um valor de cr�dito dispon�vel")
            Escreval ("Qual valor de empr�stimo voc� gostaria de simular ?")
            Leia (valor_emp)
         Fimenquanto
         Escreval ("Aos nossos empr�stimos � aplicado 20% de juros no valor de quita��o do empr�stimo")
         Escreval ("Voc� pode parcelar o pagamento em at� 12X!!!!")
         Escreval ("Em quantas parcelas voc� gostaria de parcela o pagamento?")
         Leia (numero_parcelas)
         enquanto (numero_parcelas > 12) faca
            Escreval ("N�mero de parcelas indispon�vel, escolha novamente :")
            Leia (numero_parcelas)
         Fimenquanto
         valor_pagamento <- ((valor_emp * 20) / 100) + valor_emp
         Valor_parcelas <- (valor_pagamento + valor_emp) / numero_parcelas
      Senao
         Escreval ("Voc� possui um cr�dito de at� R$2000,00 para o empr�stimo")
         Escreva ("Qual valor de empr�stimo voc� gostaria de simular ?")
         Leia (valor_emp)
         Escreval ("Aos nossos empr�stimos � aplicado 20% de juros no valor de quita��o do empr�stimo")
         Escreval ("Voc� pode parcelar o pagamento em at� 12X!!!!")
         Escreval ("Em quantas parcelas voc� gostaria de parcela o pagamento?")
         Leia (numero_parcelas)
         enquanto (numero_parcelas > 12) faca
            Escreval ("N�mero de parcelas indispon�vel, escolha novamente :")
            Leia (numero_parcelas)
         Fimenquanto
         valor_pagamento <- ((valor_emp * 20) / 100) + valor_emp
         Valor_parcelas <- valor_pagamento / numero_parcelas
      Fimse
   Caso "2"
      Escreva ("Informe a sua renda mensal:")
      Leia (renda_consulta)
      Se (renda_consulta <= 1500) entao
         Escreval ("Voc� possui um cr�dito de R$1000,00 para empr�stimo")
         Escreval ("Consulta finalizada!")
      Senao
         Escreval ("Voc� possui um cr�dito de R$2000,00 para empr�stimo.")
         Escreval ("Consulta finalizada!")
      Fimse
   Caso "3"
      Escreval ("Fim do atendimento, Adeus!")
   Fimescolha


Fimalgoritmo