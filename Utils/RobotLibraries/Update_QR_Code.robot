#Author: AnhPham
*** Settings ***
Library     RequestsLibrary
Library     Collections


*** Keywords ***
Update QR Code
    [Arguments]   ${session}        ${QRCode}       ${UpdateQRJson}     ${headers}
    ${response}=    Patch Request    ${session}   uri=${updateQRCode}/${QRCode}   data=${UpdateQRJson}    headers=${headers}
    [return]    ${response}

Verify Response Status
    [Arguments]     ${resp}   ${expectedStatus}
    Should Be Equal    ${resp.status_code()}    ${expectedStatus}
