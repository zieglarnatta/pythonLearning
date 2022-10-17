*** Settings ***
Documentation    Suite description
Library         BuiltIn

*** Variables ***
#${BROWSER}                  headlessfirefox     #comment this for regular browser experience
${BROWSER}                    chrome    #uncomment this to test via Firefox
#${BROWSER}                  geckodriver    #uncomment this to test via Firefox
${kingCounty}               https://kingcounty.gov/depts/transportation/metro/alerts-updates/signup.aspx
${kingCountyExisting}       https://public.govdelivery.com/accounts/WAKING/subscriber/new
${nyMetro}                  https://mymtaalerts.com/Subscribe.aspx

${phoneNum}   #(660) 290-2193     #7DeU1G3z
${email}      ezqgeqrvncjdluib@gmail.com    #

*** Test Cases ***
Test title
    [Tags]    DEBUG
    ${phoneSize}=    Get length   ${phoneNum}
    ${emailSize}=    Get length   ${email}
    IF  ${phoneSize} > 0
      log       ${phoneNum}     console=yes
    ELSE IF     ${emailSize} > 0
      log       ${email}     console=yes
    END

*** Keywords ***
Provided precondition
    Setup system under test