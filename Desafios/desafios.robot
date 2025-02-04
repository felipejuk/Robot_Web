*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${SD}    //span[@class='ui-icon ui-icon-circle-triangle-e']
${SE}    //span[@class='ui-icon ui-icon-circle-triangle-w'] 

*** Test Cases ***
Abrir Browser e preencher campos
    Open Browser  https://testautomationpractice.blogspot.com/  chrome    options=add_argument("--start-maximazed")
    Wait Until Element Is Enabled    xpath://span[normalize-space()='For Selenium, Cypress & Playwright']    20
    Click Element         //input[@id='name']
    Input Text            //input[@id='name']        Felipe
    Click Element         //input[@id='email']
    Input Text            //input[@id='email']       teste@gmail.com
    Click Element         //input[@id='email']
    Input Text            //input[@id='email']       963 987 987
    Click Element         //textarea[@id='textarea']
    Input Text            //textarea[@id='textarea']    Rua do teste, 34
    Select Radio Button    gender    male
    Select Checkbox    sunday
    Select Checkbox    saturday
    Click Element    //select[@id='country']
    Select From List By Value    //select[@id='country']    brazil
    Select From List By Value    //select[@id='colors']    red
    Select From List By Value    //select[@id='colors']    blue
    Select From List By Value    //select[@id='colors']    yellow
    Sleep    2
    Select From List By Value    //select[@id='animals']    dog
    Click Element    //input[@id='datepicker']
    Click Element    ${SD}
    Sleep    2
    Click Element    ${SD}
    Sleep    2
    Click Element    ${SD}
    Sleep    2
    Click element    //a[normalize-space()='15']


    Sleep    20
