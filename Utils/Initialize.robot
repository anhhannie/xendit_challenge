*** Settings ***
Documentation       Creates the session which can be used in all api requests

Library     Collections
Library     RequestsLibrary
Library     OperatingSystem
Resource    ${EXECDIR}/Resources/URIs.robot

*** Keywords ***
Create API Session
  ${headers}=    Create Dictionary    Content-Type=application/json
  Create Session    xendit    ${siteUrl}      headers=${headers}    verify=True
  Set Global Variable  ${session}  xendit
  Set Global Variable  ${headers}   ${headers}
