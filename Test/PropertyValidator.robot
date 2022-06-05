*** Settings ***
Library     RequestsLibrary
Library     ${EXECDIR}/Resources/PythonLibraries/JSONLibraryKeywords.py
Library     Collections
Library     String

Import Resource    ${EXECDIR}/Utils/RobotLibraries/Update_QR_Code.robot
Import Resource    ${EXECDIR}/Resources/TestData/UpdateQRCodeData.robot
Import Resource    ${EXECDIR}/Utils/PythonLibraries/JSONLibraryKeywords.py

*** Test Cases ***
# Validator check
Property Validators
    [tags]    api-validators    api_update_qr_code
    ${productSchema}=    load_json_from_file   ${EXECDIR}/Resources/TestData/JsonSchema.json

    ${properties}=    Get Value From JsonPath    ${productSchema}    $.properties
    ${baseRequestBody}=   Set Variable    {}
    FOR    ${property}   IN    @{properties}
       ${propertyType}=    Get Value From JsonPath    ${properties}    $.${property}.type
       ${requestBody}=   Create Invalid Property Type    ${property}    ${propertyType}    ${baseRequestBody}    $
       ${resp}=    Update QR Code    ${ValidQRCode}    ${requestBody}
       Should Be Equal    ${resp.json()}    ${expResp}
       Should Be Equal    ${resp.status_code()}    400
    END

*** Keywords ***
Create Invalid Property Type
    [Arguments]   ${propertyName}   ${propertyType}   ${baseRequestBody}    ${jsonPath}
    ${propertyType}=    Convert To String    ${propertyType}
    ${propertyType}=    Replace String    ${propertyType}    '    "
    ${BaseRequestBody}=   Convert JSON   ${BaseRequestBody}
    ${dict}=    Run Keyword If    '${propertyType}'=='string'    Create Dictionary    ${propertyName}=${123}
    ...   ELSE IF   '${propertyType}'=='number'    Create Dictionary    ${propertyName}=Test
    ...   ELSE    Create Dictionary    ${propertyName}=${123}
    ${requestBody}=   add_object_to_json    ${BaseRequestBody}    ${jsonPath}   ${dict}
    [return]    ${requestBody}
