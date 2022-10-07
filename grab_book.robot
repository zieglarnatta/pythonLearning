*** Settings ***
Library         String
Library         SeleniumLibrary
Library         OperatingSystem

Suite Setup            Open Browser to Archive
Suite Teardown           close Browser

*** Variables ***
${BROWSER}                    chrome
${email}        nunamof.pemali@gotgel.org
${password}     Ashok1!
${url}          https://archive.org/details/imaginingargenti0000thor
${backupURL}    https://archive.org/account/login

*** Test Cases ***
Get The Book
  Load the login
  Enlarge
  Grab screen shots

*** Keywords ***

#suite setup
Open Browser to Archive
    #Open Browser               ${BROWSER}  add_argument("--headless");add_argument("--start-maximized")
    Open Browser                ${backupURL}     ${BROWSER}  #uncoment this for regular browser UI and comment above to disable headless
    Maximize Browser Window  #uncoment this for regular browser UI

Load the login
  Wait until element is visible     name:username
  Input text                        name:username        ${email}              clear=True
  Wait until element is visible     name:password
  Input text                        name:password        ${password}              clear=True

  Wait until element is visible     name:submit-to-login
  Click element                     name:submit-to-login
  Go to                             ${url}

Enlarge
  Wait until element is visible     //*[@id="BookReader"]/div[2]/div/nav/ul[2]/li[4]/button
  Click element                     //*[@id="BookReader"]/div[2]/div/nav/ul[2]/li[4]/button
  Wait until element is visible     //*[@id="BookReader"]/div[2]/div/nav/ul[2]/li[11]/button
  Click element                     //*[@id="BookReader"]/div[2]/div/nav/ul[2]/li[11]/button


Grab screen shots
  FOR  ${i}   IN RANGE    226
    Capture Page Screenshot
  # FOR  ${i}   IN RANGE    5
  #   Capture Element Screenshot        //*[@id="BookReader"]/div[1]/br-mode-1up/div[2]/div[2]/div[1]
    Sleep                             1
    Wait until element is visible     //*[@id="BookReader"]/div[2]/div/nav/ul[2]/li[3]/button
    Click element                     //*[@id="BookReader"]/div[2]/div/nav/ul[2]/li[3]/button
  END
