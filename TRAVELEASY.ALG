Algoritmo "TravelEasy"

Var
codigo : vetor[1..3] de caractere
codigo1 : vetor[1..3] de caractere
nome : vetor[1..3] de caractere
idade : vetor[1..3] de caractere
sexo : vetor[1..3] de caractere
cpf : vetor[1..3] de caractere
origem : vetor[1..3] de caractere
destino : vetor[1..3] de caractere
check_in : vetor[1..3] de caractere
check_out : vetor[1..3] de caractere
opcao : inteiro
indice : inteiro
max : inteiro
X, teste : logico

FUNÇÃO PESQUISA(xcodigo : caracter): Inteiro
Var
   Item, XP : inteiro
Inicio
   XP := 0
   PARA Item DE 1 ATÉ max FAÇA
      SE (xcodigo = Codigo[Item]) ENTÃO
         XP := Item
      FIMSE
   FIMPARA
   RETORNE XP
FIMFUNÇÃO


procedimento CadastrarCliente
Var
   while : logico
   pesquisa : inteiro
   xcodigo, xnome, xidade, xsexo, xcpf, Resp : caractere
Inicio
      while := verdadeiro
      Enquanto while Faca
            indice := indice +1
            SE indice > max ENTAO
               while := Falso
            SENAO
                 limpatela
                 escreval("Cadastro de novo cliente")
                 escreval("")
                 escreval("Bem vindo!")
                 escreval("Codigo: ")
                 leia(xcodigo)
                 pesquisa := Pesquisa(xcodigo)
                 SE ((pesquisa = 0) E (xcodigo <> "0")) ENTÃO
                    escreval("Digite seu nome: ")
                    leia(xnome)
                    escreval("Digite sua idade: ")
                    leia(xidade)
                    escreval("Qual o seu sexo?")
                    leia(xsexo)
                    escreval("Digite seu CPF: ")
                    leia(xcpf)
                    
                    codigo[indice] := xcodigo
                    nome[indice] := xnome
                    idade[indice] := xidade
                    sexo[indice] := xsexo
                    cpf[indice] := xcpf
                 FIMSE
            FIMSE
            Resp := ""
            escreval("")
            escreval("-------------------")
            escreval("")
            escreval("Deseja Cadastrar um novo cliente?")
            escreval(" S / N ")
            leia(Resp)
            SE ((Resp = "N") ou (Resp = "n")) ENTAO
               while := Falso
            SENAO
                 while := Verdadeiro
            FIMSE
      Fimenquanto
fimprocedimento

procedimento CadastrarDestino
Var
   while : logico
   pesquisa : inteiro
   xcodigo, xorigem, xdestino, xcheck_in, xcheck_out, Resp : caractere
Inicio
      while := verdadeiro
      Enquanto while Faca
            indice := indice +1
            SE indice > max ENTAO
               while := Falso
            SENAO
                 limpatela
                 escreval("Cadastro de novo cliente")
                 escreval("")
                 escreval("Bem vindo!")
                 escreval("Codigo: ")
                 leia(xcodigo)
                 pesquisa := Pesquisa(xcodigo)
                 SE ((pesquisa = 0) E (xcodigo <> "0")) ENTÃO
                    escreval("Digite a cidade de origem: ")
                    leia(xorigem)
                    escreval("Digite a cidade de destino: ")
                    leia(xdestino)
                    escreval("Qual a data de ida?")
                    leia(xcheck_in)
                    escreval("Qual a data de volta? ")
                    leia(xcheck_out)

                    codigo1[indice] := xcodigo
                    origem[indice] := xorigem
                    destino[indice] := xdestino
                    check_in[indice] := xcheck_in
                    check_out[indice] := xcheck_out
                 FIMSE
            FIMSE
            Resp := ""
            escreval("")
            escreval("-------------------")
            escreval("")
            escreval("Deseja Cadastrar um novo destino?")
            escreval(" S / N ")
            leia(Resp)
            SE ((Resp = "N") ou (Resp = "n")) ENTAO
               while := Falso
            SENAO
                 while := Verdadeiro
            FIMSE
      Fimenquanto
fimprocedimento

Procedimento Consulta
Var cFlag : Logico
   cPesq : Inteiro
   xcodigo, xnome, xidade, xsexo, xcpf, Resp, Resp1 : caractere
Inicio
   cFlag := VERDADEIRO
   ENQUANTO cFlag FAÇA
      SE indice < 1 ENTÃO  // verifica não tem nenhum elemento cadastrado?
         cFlag := Falso
      SENÃO
         SE (xcodigo = "0") ENTÃO
            cFLAG := Falso
         SENÃO
            cPesq := PESQUISA(xcodigo) // Pesquisa o código
            escreval("1 - Consultar clientes")
            escreval("2 - Consultar destinos")
            escreval("Digite a opção desejada")
            leia(Resp1)
            SE ((Resp1 > 0 ) e (Resp1 < 3)) ENTAO
               escolha Resp1
               caso = 1
                    xnome := Nome[cPESQ]
                    xidade := Idade[cPESQ]
                    xsexo := Sexo[cPESQ]
                    xcpf := cpf[cPESQ]
                    EscrevaL("Nome..: ",xnome)
                    EscrevaL("Idade.: ",xidade)
                    EscrevaL("Sexo..: ",xSexo)
                    EscrevaL("CPF..: ",xcpf)
                    Escreval(" ")
                    Escreva("OK !!! - tecle <<ENTER>> ")
                    LEIA(X)
                caso = 2

                     xorigem := origem[cPESQ]
                     xdestino := destino[cPESQ]
                     xcheck_in := check_in[cPESQ]
                     xcheck_out := check_out[cPESQ]
                     EscrevaL("Origem..: ",xorigem)
                     EscrevaL("Destino.: ",xdestino)
                     EscrevaL("Data da ida..: ",xcheck_in)
                     EscrevaL("Data da volta..: ",xcheck_out)
                     Escreval(" ")
                     Escreva("OK !!! - tecle <<ENTER>> ")
                     LEIA(X)
            FIMSE
         FIMSE
      FIMSE
   FIMENQUANTO
FimProcedimento

Inicio
   max := 3
   X := VERDADEIRO
   teste := VERDADEIRO
   indice := 0

   ENQUANTO teste FAÇA
         X := VERDADEIRO
   escreval("MENU")
   escreval("Selecione a opção desejada")
   escreval("1 - Cadastrar novo cliente")
   escreval("2 - Cadastrar novo destino")
   escreval("3 - Consultar clientes")
   escreval("4 - Sair")
   leia(opcao)
   SE ((opcao > 0 ) e (opcao < 5)) ENTAO
      escolha opcao
      caso = 1
           CadastrarCliente
      caso = 2
           CadastrarDestino
      caso = 3
           Consulta
      caso = 4
           teste := Falso
      fimescolha
   SENÃO
      Escreval("Opção inválida")
      Escreva("tecle <enter>")
      LEIA(X)
   FIMSE
FIMENQUANTO


Fimalgoritmo
