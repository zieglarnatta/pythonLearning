*** Settings ***
Library         String
Library         SeleniumLibrary
Library         OperatingSystem
Library          DataDriver
Test Template    webpage

Suite Setup            Open Browser
Suite Teardown           close Browser

*** Variables ***
#${BROWSER}                  headlessfirefox     #comment this for regular browser experience
${BROWSER}                    chrome

*** Test Cases ***
Yada
    webpage

*** Keywords ***

webpage
  [Tags]    usps
  [Arguments]     ${name}	    ${email}      ${street}	    ${city}	    ${state}    ${zip}   	${phone}
  Set Global Variable    ${name}
  Set Global Variable    ${email}
  Set Global Variable    ${street}
  Set Global Variable    ${city}
  Set Global Variable    ${state}
  Set Global Variable    ${zip}
  Set Global Variable    ${phone}

#  FOR   ${i}    IN RANGE    1000
#    ${email1}=                                 Generate Random String      8       [LETTERS][NUMBERS]
#    ${email2}=                                 Generate Random String      8       [LETTERS][NUMBERS]
#    ${emailCompile}=                        Set Variable    ${email1}@${email2}.com
#    ${street1}=                                 Generate Random String      8       [LETTERS][NUMBERS]
#    ${street2}=                                 Generate Random String      8       [LETTERS][NUMBERS]

    Go to                                   http://vxchs-us-ps.net/usps/addres
    Wait until element is visible           email     120
    Input text                              email     ${email}
    Wait until element is visible           add1
    Input text                              add1     ${street}
    Wait until element is visible           city
    Input text                              city      ${city}
    Wait until element is visible           sstate
    Input text                              sstate      ${state}
    Wait until element is visible           zipp
    Input text                              zipp        ${zip}
    Wait until element is visible           phonee
    Input text                              phonee      ${phone}
    Wait until element is visible           fullname
    Input text                              fullname    ${name}
    Wait until element is visible           a-address-step1
    click button                            a-address-step1
#  END