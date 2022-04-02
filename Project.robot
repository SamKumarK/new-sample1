*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${browser}  chrome
${url}   https://www.google.com/

*** Test Cases ***
Google
    Open Browser    ${url}   ${browser}

    Maximize Browser Window
    Press Keys   xpath://input[@name='q']    Python+ENTER
    ${AllLinksCount}=  get element count  xpath://div[@id='rso']//h3
    log to console   ${AllLinksCount}

   @{LinkItems}     create list
   FOR     ${i}  IN RANGE  1    ${AllLinksCount}+1
   ${linkText}=  get text  xpath:(//div[@id='rso']//h3)[${i}]
   log to console   ${linkText}
   END








*** Keywords ***
