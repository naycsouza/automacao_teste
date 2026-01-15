*** Settings ***
Resource        ../resources/resource.robot
Test Teardown   Fechar Navegador

*** Test Cases ***
Cenário 1 - Email inválido no login
    Dado que entro na página de login
    Quando escrevo email inválido
    Então deve aparecer mensagem de erro

Cenário 2 - Recuperação de email
    Dado que entro na página de login
    Quando clico em Esqueci email
    Então sou direcionado para página de recuperação

Cenário 3 - Criar nova conta
    Dado que entro na página de login
    Quando clico em Criar conta
    Então sou direcionado para página de criação de conta

*** Keywords ***
Dado que entro na página de login
    Abrir Navegador E Acessar Login

Quando escrevo email inválido
    Preencher Email    teste$teste.com

Então deve aparecer mensagem de erro
    Validar Mensagem De Erro De Email

Quando clico em Esqueci email
    Clicar Em Esqueci Email

Então sou direcionado para página de recuperação
    Validar Página De Recuperação

Quando clico em Criar conta
    Clicar Em Criar Conta

Então sou direcionado para página de criação de conta
    Validar Página De Criação De Conta
