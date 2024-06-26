*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${browser}  chrome
${url}  https://demo.nopcommerce.com
*** Keywords ***

*** Test Cases ***
Testing Radio Button and checkboxes
    open browser    ${url}  ${browser}
    maximize browser window
    #set selenium speed  2seconds
    title should be     nopCommerce demo store
    click link      xpath:/html/body/div[6]/div[1]/div[1]/div[2]/div[1]/ul/li[1]/a
    select radio button     Gender  M
    input text  id:FirstName    Omkar
    input text  id:LastName     Hase
    input text  id:Email    omkar@gmail.com
    input text  id:Company  DI
    unselect checkbox   Newsletter
    input text  id:Password     omkar
    input text  id:ConfirmPassword      omkar

    sleep   5
    close browser

