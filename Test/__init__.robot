*** Settings ***
Resource      ${EXECDIR}/Utils/Initialize.robot
Resource      ${EXECDIR}/Utils/RobotLibraries/Identity.robot
Resource      ${EXECDIR}/Resources/URIs.robot

Suite Setup   Setup All
Suite Teardown    Cleanup

*** Keywords ***
Setup All
  Create API Session
  Authenticate    ${username}    ${password}
