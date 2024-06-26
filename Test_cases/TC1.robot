*** Settings ***
Library     SeleniumLibrary
Library    ../main.py

*** Variables ***

*** Test Cases ***
Google
    Open Browser    https://www.google.co.in/   chrome
    print_hi    omkar


