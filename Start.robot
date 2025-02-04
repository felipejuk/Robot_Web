*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${simples}  Noesis Academy
@{Dias_da_semana}  Domingo    Segunda    Terça  Quarta  Quinta  Sexta  Sábado
&{Cadastro}  Nome=João  Email=felipejuk@gmail.com  mae=Maria

*** Test Cases ***
Acessar um site, Logar com User e password corretos
    [Tags]  Logar

    Open Browser  https://opensource-demo.orangehrmlive.com/web/index.php/auth/login  chrome    options=add_argument("--start-maximazed")   
    
    Wait Until Element Is Enabled    xpath://input[@name="username"]    20
    Input Text        //input[@name="username"]    Admin
    Input Password    //input[@name="password"]    admin123
    Click Button      //button[normalize-space()='Login']
    Sleep    5
    Page Should Contain Image    //img[@alt='client brand banner']   
    Capture Page Screenshot

Analisando Variáveis
    [Tags]  Var
    Log To Console    ${simples}
    Log To Console    ${Dias_da_semana[6]}
    Log To Console    ${Cadastro .mae}


 