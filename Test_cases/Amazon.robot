*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${browser}    chrome
${url}    https://www.youtube.com/

*** Test Cases ***
Try Login
    open browser    ${url}    ${browser}
    maximise browser window
    set selenium speed    2seconds
    #sleep    2
    click link    //*[@id="search-container"]
    #sleep    2
    ${input_name}    set variable    name=search_query
    input text    ${input_name}    Google
    click link    //*[@id="search-icon-legacy"]/yt-icon/yt-icon-shape
    sleep    5
    close browser