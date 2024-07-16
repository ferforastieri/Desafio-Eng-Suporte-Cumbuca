# Desafio CLI Cumbuca

Este projeto tem o objetivo de servir como ponto de partida para a implementação de desafios de contratação da Cumbuca que envolvam implementar uma interface de linha de comando em Elixir.

## Pré-requisitos

Primeiro, será necessário instalar o Elixir em versão igual ou superior a 1.16. Com o Elixir instalado, você terá a ferramenta de build `mix`.

Para verificar se o Elixir está instalado corretamente, você pode usar o comando:

```sh
elixir -v

## Compilando o Projeto
Para compilar o projeto e gerar o binário executável, use o comando:
mix escript.build

Isso irá gerar um binário com o mesmo nome do projeto na pasta atual.

## Executando o Binário
Para executar o binário gerado, utilize um dos seguintes comandos:

No Linux/Mac:
./desafio_cli_cumbuca

No Windows:
escript desafio_cli_cumbuca

##Uso da Ferramenta
Ao executar o binário, você verá o seguinte menu:


Bem-vindo à Ferramenta de Realeza!
Escolha uma opção:
1. Ler nomes de um arquivo padrão ('nomes.txt')
2. Ler nomes de um arquivo específico
3. Inserir nomes manualmente
4. Sair

## Opções do Menu
Ler nomes de um arquivo padrão ('nomes.txt'): Lê uma lista de nomes do arquivo padrão 'nomes.txt'.
Ler nomes de um arquivo específico: Lê uma lista de nomes de um arquivo específico cujo caminho é fornecido pelo usuário.
Inserir nomes manualmente: Permite ao usuário inserir uma lista de nomes manualmente, um por linha.
Sair: Sai do programa.

## Exemplos

Entrada

Eduardo
Maria
Daniel
Eduardo

Saída

Eduardo I
Maria I
Daniel I
Eduardo II

## Funções Principais
main/1: Ponto de entrada principal para a CLI. Aceita argumentos de linha de comando.
enumerate_names/2: Adiciona numerais romanos a uma lista de nomes.
to_roman/1: Converte números para numerais romanos.

##Estrutura do Projeto

desafio_cli_cumbuca/
├── lib/
│   └── desafio_cli_cumbuca.ex
├── test/
│   └── desafio_cli_cumbuca_test.exs
├── mix.exs
└── README.md


## Testes
Para rodar os testes, utilize o comando:

mix test

Os testes estão localizados no diretório test e cobrem as funções principais do projeto.

## Contato
Para mais informações, entre em contato com a equipe de desenvolvimento da Cumbuca.

Este README fornece uma visão geral completa sobre como configurar, compilar, executar e te



