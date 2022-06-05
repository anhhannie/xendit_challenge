*** Settings ***
Library       Collections
Library       RequestsLibrary
Import Resource    ${EXECDIR}/Utils/RobotLibraries/Update_QR_Code.robot
Import Resource    ${EXECDIR}/Utils/RobotLibraries/Identity.robot

Test Template   Verify Update QR Code
Force Tags    api_update_qr_code
*** Variables ***
${VALID_QRCODE}       12345
${EXISTED_QRCODE}     43234
${INV_QRCODE}         Invalid_QRCode

*** Test Cases ***    checkResp  MissField     token          QRCode                   req                 status      expResp
#Positive case
Update successfully   YES        NO            ${loginToken}  ${VALID_QRCODE}          ReqBody.json        200         UpdQRCReqResp.json

#Negative cases
Existed QRcode        YES        NO            ${loginToken}  ${EXISTED_QRCODE}        ReqBody.json        404         QRCodeInUse.json
Invalid QRcode        YES        NO            ${loginToken}  ${INV_QRCODE}            ReqBody.json        404         QRCodeNotFound.json
QRcode not found      YES        NO            ${loginToken}  ${INV_QRCODE}            ReqBody.json        404         QRCodeNotFound.json
Without token         NO         NO            ${EMPTY}       ${INV_QRCODE}            ReqBody.json        403         ${EMPTY}
Invalid token         NO         NO            ${EMPTY}       ${INV_QRCODE}            ReqBody.json        401         ${EMPTY}
While server down     NO         NO            ${loginToken}  ${VALID_QRCODE}          ReqBody.json        500         ${EMPTY}
Missing all fields    NO         ALL           ${loginToken}  ${VALID_QRCODE}          ReqBody.json        400         ${EMPTY}
Missing field         NO         description   ${loginToken}  ${VALID_QRCODE}          ReqBody.json        400         ${EMPTY}
Missing field         NO         callback_url  ${loginToken}  ${VALID_QRCODE}          ReqBody.json        400         ${EMPTY}
Missing field         NO         amount        ${loginToken}  ${VALID_QRCODE}          ReqBody.json        400         ${EMPTY}
Minimum amount <1500  NO         NO            ${loginToken}  ${VALID_QRCODE}          MinAmount.json      422         ${EMPTY}
Minimum amount <5M    NO         NO            ${loginToken}  ${VALID_QRCODE}          MaxAmount.json      422         ${EMPTY}
#Security check
SQL Injestion         NO         NO            ${loginToken}  ${VALID_QRCODE} OR 1=1   MaxAmount.json      404         ${EMPTY}
XSS validation        NO         NO            ${loginToken}  ${VALID_QRCODE}          XSSvalidation.json  422         ${EMPTY}

*** Keywords ***
Verify Update QR Code
    [Arguments]   ${checkResp}    ${token}    ${QRCode}    ${req}   ${status }    ${expResp}
    ${headers}= Set Headers    ${token}
    ${requestBody}=       load_json_from_file       ${EXECDIR}/Resources/TestData/${req}
    Run Keyword If    '${MissingField}'!='NO'       Delete Json Object    ${requestBody}    ${MissingField}
    ${resp}=  Update QR Code    ${Token}    ${QRCode}    ${UpdateQRJson}    ${headers}
    Status Should Be    ${expectedStatus}    ${resp.status_code()}
    ${requestBody}= Run Keyword If    '${checkResp}'=='YES'     load_json_from_file    ${EXECDIR}/Resources/TestData/${expResp}
    Run Keyword If    '${checkResp}'=='YES'     Should Be Equal    ${resp.json()}    ${expResp}

Set Headers
  [Arguments]       ${token}
  ${headers}=   Create Dictionary    Content-Type=application/json   Authorization=Token ${token}
  Set Test Variable    ${headers}

Delete Json Object
  [Arguments]    ${requestBody}     ${delObj}
  ${requestBody}=   Run Keyword If    '${delObj}'=='ALL'    Set Test Variable    ${requestBody}    {}
  ...               ELSE    delete_object_from_json     ${json}   ${delObj}
