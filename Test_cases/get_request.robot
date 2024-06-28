*** Settings ***
Library    RequestsLibrary
Library    Collections

*** Variables ***
${base_url}    https://api.chess.com
${player}    erik

*** Test Cases ***
Get_info
    Create Session    mysession    ${base_url}
    ${response}=    get request    mysession    /pub/player/${player}
    
    Log to console    ${response.status_code}
    Log to console    ${response.content}
    Log to console    ${response.headers}

    ${stat_code}=      Convert to string    ${response.status_code}


    ${body}=  Convert to string    ${response.content}
    should contain     ${body}     erik

    ${Content_type_val}=     Get from dictionary    ${response.headers}     Content-Type
