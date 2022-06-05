*** Settings ***
Library     Collections
Library     RequestsLibrary

*** Keywords ***
Authentication
  ###------------------------------------------------------------------------------------------------------------------###
  [Documentation]   Generates a token for the specified user and stores it in a global variable called ``${token}``
  ###------------------------------------------------------------------------------------------------------------------###

  [Arguments]       ${username}       ${password}
  ${loginRequestBody}=     Create Dictionary    domain=${domainUrl}     grant_type=password       password=${password}        username=${username}
  ${loginResponse} =  Post Request        ${session}        ${loginApi}        data=${loginRequestBody}
  ${loginToken}=    Run Keyword If    '${loginResponse.text}'!='${EMPTY}'    Get From Dictionary       ${loginResponse.json()}       token
  Set Global Variable    ${loginToken}

Set Headers
  [Arguments]       ${token}
  ${headers}=   Create Dictionary    Content-Type=application/json   Authorization=Token ${token}
  Set Test Variable    ${headers}
