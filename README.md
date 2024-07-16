# Desafio CLI Reis e Rainhas Cumbuca

Este projeto tem é um desafio proposto pela Combuca, o objetivo é implementar uma interface de linha de comando em Elixir. Com base no seguinte problema: 
```
A ferramenta de linha de comando que você irá desenvolver deve receber a lista dos reis e rainhas de Cumbúquia em ordem e retornar os mesmos nomes, cada um com sua devida numeração.

Ao iniciar o binário, ele deve primeiro exibir uma breve explicação de seu uso. Ele irá então esperar o usuário inserir uma lista de nomes. Os nomes serão inseridos um por linha, e a lista será considerada terminada quando for lida uma linha em branco.

Após a lista ser finalizada, a ferramenta irá repetir os nomes inseridos, porém, os nomes serão acrescidos de um número romano conforme necessário.
```
## Pré-requisitos

Primeiro, será necessário instalar o Elixir em versão igual ou superior a 1.16. Com o Elixir instalado, você terá a ferramenta de build `mix`.

Para verificar se o Elixir está instalado corretamente, você pode usar o comando:

elixir -v

## Compilando o Projeto
Para compilar o projeto e gerar o binário executável, use o comando:
```
mix escript.build
```
Isso irá gerar um binário com o mesmo nome do projeto na pasta atual.

## Executando o Binário
Para executar o binário gerado, utilize um dos seguintes comandos:

No Linux/Mac:
```
./desafio_cli_cumbuca
```
No Windows:
```
escript desafio_cli_cumbuca
```

## Uso da Ferramenta
Ao executar o binário, você verá o seguinte menu:

```
Bem-vindo à Ferramenta de Realeza!
Escolha uma opção:
1. Ler nomes de um arquivo padrão ('nomes.txt')
2. Ler nomes de um arquivo específico
3. Inserir nomes manualmente
4. Sair
```
## Exemplos

Entrada
```
Eduardo
Maria
Daniel
Eduardo
```
Saída
```
Eduardo I
Maria I
Daniel I
Eduardo II
```
## Estrutura do Projeto
```
desafio_cli_cumbuca/
├── lib/
│   └── desafio_cli_cumbuca.ex
├── test/
│   └── desafio_cli_cumbuca_test.exs
├── mix.exs
└── README.md
```

## Testes
Para rodar os testes, utilize o comando:
```
mix test
```
Os testes estão localizados no diretório test e cobrem as funções principais do projeto.

## Contato
Para mais informações, entre em contato comigo, todas as minhas redes estao disponiveis!

Contribuições são bem-vindas! Sinta-se à vontade para abrir issues e pull requests para sugerir novas funcionalidades, melhorias no código, correções de bugs, etc.

## Licença
Este projeto é licenciado sob a Licença MIT. Veja o arquivo LICENSE para mais detalhes.


