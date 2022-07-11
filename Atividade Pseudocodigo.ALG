Algoritmo "Agência de Viagens"
// Disciplina  : Módulo_2
// Descrição   : Cadastro de clientes, destino, e consulta de estrutura de dados
// Autor(a)    : Letícia Pereira
// Versão 4

Var
   opcao : caracter
   x,menu: logico
   consulta: caracter


   //-Parte Cliente-

   // Número do cliente: num
   // nome completo: name
   // CPF:cpf
   // Endereço:end
   // Telefone celular: fone

   num     : vetor[1..5] de inteiro
   name    : vetor[1..5] de caracter
   cpf     : vetor[1..5] de caracter
   end     : vetor[1..5] de caracter
   fone    : vetor[1..5] de caracter
   resp: caracter
   i: inteiro

Procedimento NovoCliente
Inicio
   Limpatela
   Escreval("Incluir novo cliente")
   Escreval(" ")
   resp <- "voltar"
   enquanto resp = "voltar"  faca
      i <- i + 1
      Escreval("Digite o número do", i,"° cliente: ")
      Leia(num[i])
      Escreval("Nome completo do cliente: ")
      Leia(name[i])
      Escreval(" ")
      Escreval("CPF do cliente: ")
      Leia(cpf[i])
      Escreval(" ")
      Escreval("Endereço do cliente: ")
      Leia(end[i])
      Escreval(" ")
      Escreval("Digite o telefone do cliente: ")
      Leia(fone[i])
      Escreval(" ")
      Escreval("Digite voltar para ir ao menu")
      Repita
         Leia(resposta)
         Escreval(" ")
         Escreval("Opção inválida !!!")
         Escreval(" ")
      Ate ((resposta="Voltar") ou (resposta="VOLTAR")ou (resposta="voltar"))
      Limpatela



FimProcedimento

//--

Procedimento Dadosdosclientes
Inicio
   Limpatela
   Escreval("Consulta")
   Escreval(" ")
   Escreval("Digite o tipo de consulta")
   Escreval("Lista de todos os clientes, digite '1'")
   Escreval("Voltar ao menu, digite '2'")
   leia(consulta)
   Se consulta="1" entao
      Para i de 1 ate 5 passo 1 faca
         Se num[i] <> 0 entao
            escreval("Digite o número do ",i,"° cliente é: ", num[i])
            escreval("O nome do cliente é: ",name[i])
            escreval("CPF do cliente é: ",cpf[i])
            escreval("O telefone do cliente é: ",fone[i])
         Fimse
      Fimpara
   Fimse
   se consulta="2" entao
      Para i de 1 ate 5 passo 1 faca
         escreval("O código do",i,"° cliente é: ", num[i])
      fimpara
   fimse
Fimenquanto

fimse


FimProcedimento


//-Incluir um novo destino de viagem-

// Número da viagem: nviagem
// Destino da viagem: onde
// Nome do cliente: nomecliente
// Identificação do cliente: ide

nviagem       : vetor[1..5] de inteiro
onde          : vetor[1..5] de caracter
nomecliente   : vetor[1..5] de caracter
ide           : vetor[1..5] de caracter
j: inteiro
resposta: caractere
Procedimento NovaViagem
Inicio
   Limpatela
   Escreval("Incluir viagem")
   Escreval(" ")
   resposta <- "voltar"
   enquanto resposta = "voltar"  faca
      j <- j + 1
      Escreval("Digite o número da", j ,"° viagem: ")
      Leia(nviagem[j])
      Escreval("Digite o destino da viagem: ")
      Leia(onde[j])
      Escreval("Digite o nome do cliente: ")
      Leia(nomecliente[j])
      Escreval("Digite a identificação do cliente: ")
      Leia(ide[j])
      Escreval(" ")
      Escreval("Digite voltar para ir ao menu")
      Repita
         Leia(resposta)
         Escreval(" ")
         Escreval("Opção inválida !!!")
         Escreval(" ")
      Ate ((resposta="Voltar") ou (resposta="VOLTAR")ou (resposta="voltar"))
      Limpatela

FimProcedimento


Procedimento viagem
Inicio
   Limpatela
   Escreval("Consulta")
   Escreval(" ")
   Escreval("Digite o tipo de consulta")
   Escreval("Lista de todos os clientes, digite '1'")
   Escreval("Voltar ao menu, digite '2'")
   leia(consulta)
   Se consulta="1" entao
      Para i de 1 ate 5 passo 1 faca
         Se num[i] <> 0 entao
            escreval("Digite o número da ",j,"° viagem é: ", nviagem[j])
            escreval("O destino é: ",onde[j])
            escreval("O nome do cliente é: ",nomecliente[j])
            escreval("A identificação do cliente é: ",ide[j])
         Fimse
      Fimpara
   Fimse
   se consulta="2" entao
      Para i de 1 ate 5 passo 1 faca
         escreval("O código do",j,"° cliente é: ", nviagem[j])
      fimpara
   fimse
Fimenquanto

fimse


FimProcedimento


Inicio
   Limpatela
   x <- Verdadeiro
   menu <- x
   Enquanto menu faca
      x <- Verdadeiro
      Escreval ("**** MENU ****")
      Escreval ()
      Escreval ("(1) Incluir novo cliente")
      Escreval ("(2) Consultar clientes cadastrados")
      Escreval ("(3) Incluir uma nova viagem")
      Escreval ("(4) Consultar viagens cadastradas")
      Escreval ("(5) Encerrar")
      Escreval ()
      Escreva  ("Digite a opção: ")
      Leia     (opcao)

      Limpatela

      Escolha opcao
      Caso "1"
         NovoCliente
      Caso "2"
         Dadosdosclientes
      Caso "3"
         NovaViagem
      Caso "4"
         viagem
      Caso "5"
         menu <- Falso
      Outrocaso
         Escreval("Esc para sair")
         Escreva("Enter")
         Leia(x)
      Fimescolha
      fimenquanto

Fimalgoritmo