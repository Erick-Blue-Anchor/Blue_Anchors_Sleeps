algoritmo "JokenPo"
var
    Num_Aleat, Brin             : Inteiro
    Pedra_A, Papel_A, Tesoura_A : Inteiro
    Pedra_B, Tesoura_B          : Inteiro
    Pedra_T1                    : Inteiro
    Papel_T1                    : Inteiro
    Tesoura_T2                  : Inteiro
    V, J                        : Inteiro
inicio

      
      Escreva ("Quantas vezes voc� deseja jogar 'JokenPo'?: ")
      Leia (V)
      J <- 1
      
      Enquanto (J <= V) Faca
                J <- J + 1
      
      Escreval ("-------------------------")
      Escreval ("-------- JokenPo --------")
      Escreval ("-------------------------")
      
      Escreval ("[1] Pedra")
      Escreval ("[2] Papel")
      Escreval ("[3] Tesoura")
      Leia (Brin)
      
      Se (Brin <= 0) Entao
         Escreval ("Error Syntax!")
         Fimalgoritmo
      Fimse
      
      Se (Brin > 4) Entao
         Escreval ("Error Syntax!")
         Fimalgoritmo
      Fimse
      
           Escolha (Brin)
                   Caso 1
                        Escreval ("VOC� escolheu PEDRA!")
                   Caso 2
                        Escreval ("VOC� escolheu PAPEL!")
                   Caso 3
                        Escreval ("VOC� escolheu TESOURA!")
           FimEscolha
           
      Pedra_A    <- 1
      Papel_A    <- 2
      Tesoura_A  <- 3
      Pedra_B    <- 3
      Tesoura_B  <- 3
      Pedra_T1   <- Pedra_A + Pedra_B
      Tesoura_T2 <- Tesoura_A - Tesoura_B

      Aleatorio 1, 3
      Leia (Num_Aleat)
      Aleatorio off
      
      Se (Num_Aleat = 1) Entao
         Escreval ("A M�QUINA escolheu PEDRA!")
      Senao
           Se (Num_Aleat = 2) Entao
              Escreval ("A M�QUINA escolheu PAPEL!")
           Senao
                Se (Num_Aleat = 3) Entao
                   Escreval ("A M�QUINA escolheu TESOURA!")
                FimSe
           FimSe
      FimSe
      
      Escreval ("-----------")
      Escreval ("    JO!!   ")
      Escreval ("-----------")
      Escreval ("    KEN!   ")
      Escreval ("-----------")
      Escreval ("    PO!!   ")
      Escreval ("-----------")
           
      Se (Brin = Num_Aleat) e (Num_Aleat = Pedra_A) Entao
         Escreval ("Pedra X Pedra")
         Escreval ("Houve um EMPATE!")
      Senao
           Se (Brin = Num_Aleat) e (Num_Aleat = Papel_A) Entao
              Escreval ("Papel X Papel")
              Escreval ("Houve um EMPATE!")
           Senao
                Se (Brin = Num_Aleat) e (Num_Aleat = Tesoura_A) Entao
                   Escreval ("Tesoura X Tesoura")
                   Escreval ("Houve um EMPATE!")
                Senao
                     Se (Brin = Pedra_A) e (Num_Aleat = 2) e (Num_Aleat > Pedra_A) Entao
                        Escreval ("Pedra X Papel")
                        Escreval ("Voc� PERDEU!")
                     Senao
                          Se (Brin = Pedra_A) e (Num_Aleat = 3) e (Num_Aleat < Pedra_T1) Entao
                             Escreval ("Pedra X Tesoura")
                             Escreval ("Voc� GANHOU!")
                          Senao
                               Se (Brin = Papel_A) e (Num_Aleat = 1) e (Num_Aleat < Papel_A) Entao
                                  Escreval ("Papel X Pedra")
                                  Escreval ("Voc� GANHOU!")
                               Senao
                                    Se (Brin = Papel_A) e (Num_Aleat = 3) e (Num_Aleat > Papel_A) Entao
                                       Escreval ("Papel X Tesoura")
                                       Escreval ("Voc� PERDEU!")
                                    Senao
                                         Se (Brin = Tesoura_A) e (Num_Aleat = 1) e (Num_Aleat > Tesoura_T2) Entao
                                            Escreval ("Tesoura X Pedra")
                                            Escreval ("Voc� PERDEU!")
                                         Senao
                                              Se (Brin = Tesoura_A) e (Num_Aleat = 2) e (Num_Aleat < Tesoura_A) Entao
                                                 Escreval ("Tesoura X Papel")
                                                 Escreval ("Voc� GANHOU!")
                                              FimSe
                                         FimSe
                                    FimSe
                               FimSe
                          FimSe
                     FimSe
                FimSe
           FimSe
      FimSe
      FimEnquanto
fimalgoritmo
