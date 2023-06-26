*** Settings ***
Library           SeleniumLibrary

*** Variables ***
${BROWSER}        Chrome
${SITE_URL}       https://itera-qa.azurewebsites.net/home/automation
${NOME}           Arya Stark
${TELEFONE}       555-1234
${EMAIL}          arya.stark@winterfell.com
${SENHA}          123456
${ENDERECO}       Rua Winterfell 13 B em robot
########################################################################
${SITE_URL2}       https://demoqa.com/automation-practice-form
${NOME2}           Arya
${SOBRENOME2}      Stark
${EMAIL2}          arya.stark@winterfell.com
${TELEFONE2}       555-1234
########################################################################
${SITE_URL3}       https://itera-qa.azurewebsites.net/home/automation
${SITE_URL4}       https://www.facebook.com/
${DELAY}           2

*** Test Cases ***
Preencher Formulário
    Open Browser    ${SITE_URL}    ${BROWSER}
    Input Text      id=name        ${NOME}
    Input Text      id=phone       ${TELEFONE}
    Input Text      id=email       ${EMAIL}
    Input Text      id=password    ${SENHA}
    Input Text      id=address     ${ENDERECO}
    Submit Form
    Close Browser
Preencher Formulário2
    Open Browser    ${SITE_URL2}    ${BROWSER}
    Input Text      id=firstName    ${NOME2}
    Input Text      id=lastName     ${SOBRENOME2}
    Input Text      id=userEmail    ${EMAIL2}
    Input Text      id=userNumber   ${TELEFONE2}
    Close Browser
Marcar Campos do Formulário
    Open Browser    ${SITE_URL3}    ${BROWSER}
    Select Radio Button    optionsRadios    option1
    Select Checkbox        id=monday
    Select Checkbox        id=friday
    Select Checkbox        id=sunday
    Close Browser
Cadastro no Facebook
    Open Browser    ${SITE_URL4}    ${BROWSER}
    Click Element     link=Criar nova conta
    Sleep             ${DELAY}
    Input Text        name=firstname    Arya
    Input Text        name=lastname    Stark
    Input Text        name=reg_email__    arya@gmail.com
    Input Text        id=password_step_input    @gggadssd12345ss
    Select From List by Value    id=day    13
    Select From List by Value    id=month   1
    Select From List by Value    id=year    2013
    Click Button                 name=websubmit
    Close Browser 