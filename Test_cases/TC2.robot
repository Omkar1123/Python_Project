*** Settings ***
Library     SeleniumLibrary
Library    assign1.py

*** Variables ***

*** Test Cases ***
Google

    ${json_body}=    isPal    abccba
    Log to console    ${json_body}