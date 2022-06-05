*** Settings ***
Documentation   This file is used to set all the different api paths so they
...             can be used in any test.

*** Variables ***

*** Keywords ***
Setup URIs

  Set Global Variable    ${loginApi}                     /login
  Set Global Variable    ${updateQRCode}                 /qr_codes
