*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}         https://www.practo.com
${BROWSER}     chrome
${SEARCH_BOX}  xpath://*[@id="c-omni-container"]/div/div[2]/div[1]/input
${SUGGESTION}  xpath://*[@id="c-omni-container"]/div/div[2]/div[2]/div[1]/div[1]
${BOOK}    xpath://*[@id="container"]/div/div[4]/div/div[1]/div/div[3]/div[1]/div/div[1]/div[2]/a
${SLOT}     xpath://*[@id="container"]/div/div[3]/div/div[2]/div[2]/div/div/div/div/div[2]/div[3]/div/div/div/div/div[2]/div[2]/div/div[2]/div[1]
*** Test Cases ***
Open Website
    Open Website

Search for Dentist

    Search for Dentist

*** Keywords ***
Open Website
    [Documentation]    Open the Practo website in the specified browser
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window

Search for Dentist
    [Documentation]    Search for 'dentist' in the Practo website search box
    Click Element    ${SEARCH_BOX}
    Input Text       ${SEARCH_BOX}    dentist
    Sleep            3s
    Click Element    ${SUGGESTION}
    sleep            10s
    Click Element    ${BOOK}
    sleep            5s
    Click element    ${SLOT}
    Sleep            10s



