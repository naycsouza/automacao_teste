*** Settings ***
Library    Browser

*** Variables ***
${BROWSER}        chromium
${HEADLESS}       false
${LOGIN_URL}      https://accounts.google.com/ServiceLogin
${RECOVERY_TEXT}  Esqueceu seu e-mail?
${SIGNUP_TEXT}    Criar conta

*** Keywords ***
Abrir Navegador E Acessar Login
    New Browser    ${BROWSER}    headless=${HEADLESS}
    New Page       ${LOGIN_URL}

Fechar Navegador
    Close Browser

Preencher Email
    [Arguments]    ${email}
    Wait For Elements State    id=identifierId    visible    15
    Fill Text    id=identifierId    ${email}
    Click       text=Próxima

Validar Mensagem De Erro De Email
    Wait For Elements State    css=span.jibhHc    visible    15
    Take Screenshot

Clicar Em Esqueci Email
    Click    text=${RECOVERY_TEXT}

Validar Página De Recuperação
    Wait For Elements State    text=Encontre sua conta do Google    visible    15
    Take Screenshot

Clicar Em Criar Conta
    Click    text=${SIGNUP_TEXT}

Validar Página De Criação De Conta
    Wait For Elements State    text=Criar sua Conta Google    visible    15
    Take Screenshot
