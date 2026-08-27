*** Settings ***
Library         String
Library         DateTime
Library         SeleniumLibrary
Library         OperatingSystem
Library         DataDriver
Test Template   FCC

Suite Setup            Open Browser to Duck Duck Go
Suite Teardown           close Browser

*** Variables ***
${BROWSER}                    chrome    #uncomment this to test via Firefox
${fccURL}                     https://consumercomplaints.fcc.gov/hc/en-us/requests/new?ticket_form_id=39744
${myPhone}                    916-233-9111
${email}                      royyap1@duck.com
${subject}                    Sequential Phone number spam calling
${description}                Calls but leaves no message, the phone numbers are sequentially increment
${additionalInfo}             It's sequential robo call pattern especially the NPA-NXX of: 509-250, 509-261, 509-236
${firstName}                  Roy
${lastName}                   Yap
${StreetAddress}              14010 30TH AVE NE
${city}                       Seattle
${state}                      Washington
${zip}                        98125
${delay}                      2


*** Test Cases ***
FCC on Loop
    [Tags]      fcc
    FCC

*** Keywords ***
FCC
    #[Tags]    rain_542      speedtest_100     mqtt
    [Arguments]    ${phoneNumz}
    #create current date time
    ${dateTimeRaw}=                    Get Current Date
    ${type string}=    Evaluate     type($dateTimeRaw)
    #example: 2021-09-23T19:05:28Z
    ${dateOnly}=                 Convert Date                   ${dateTimeRaw}      result_format=%B %d, %Y
    ${datetime}=                 Convert Date                   ${dateTimeRaw}      datetime
    ${hour}=                    get variable value          ${datetime.hour}
    IF  ${hour} > 12
        ${hour}=    Evaluate    ${hour}-12
        Set GLobal Variable     ${hour}
        ${tz}=      Set Variable    P.M.
        Set GLobal Variable     ${tz}
    ELSE
        ${tz}=      Set Variable    A.M.
        Set GLobal Variable     ${tz}
    END
    ${minute}=                  get variable value          ${datetime.minute}
    ${timeInput}=       Set Variable    ${hour}:${minute} ${tz}

    Go to                               ${fccURL}
    #Check all elements are there
    #email
    Wait until element is visible       request_anonymous_requester_email
    Input text                          request_anonymous_requester_email     ${email}      clear=True

    #Subject
    Wait until element is visible       request_subject
    Input text                          request_subject_label     ${subject}      clear=True

    #description
    Wait until element is visible       request_description
    Input text                          request_description     ${description}      clear=True

    #phone issues drop down
    Wait until element is visible       //*[@id="new_request"]/div[6]/a
    Select From List By Index           //*[@id="new_request"]/div[6]/a     1

    #sub issue
    Wait until element is visible       //*[@id="new_request"]/div[7]/a
    Select From List By Index           //*[@id="new_request"]/div[7]/a     2

    #is it advertising properties goods or service y/n
    Wait until element is visible       //*[@id="new_request"]/div[16]/a
    Select From List By Index           //*[@id="new_request"]/div[16]/a    2

    #your Phone method
    Wait until element is visible       //*[@id="new_request"]/div[22]/a
    Select From List By Index           //*[@id="new_request"]/div[22]/a    3       #3 for cell phone, 2 for voip

    #phone type location
    Wait until element is visible       //*[@id="new_request"]/div[24]/a
    Select From List By Index           //*[@id="new_request"]/div[24]/a    1

    #your phone number
    Wait until element is visible       request_custom_fields_22625614
    Input text                          request_custom_fields_22625614     ${myPhone}      clear=True

    #on do not call list?
    Wait until element is visible       //*[@id="new_request"]/div[26]/a
    Select From List By Index           //*[@id="new_request"]/div[26]/a    1

    #date of problem
    Wait until element is visible       //*[@id="new_request"]/div[31]/input[1]
    Input text                          //*[@id="new_request"]/div[31]/input[1]     ${dateOnly}      clear=True

    #time of problem
    Wait until element is visible       request_custom_fields_22732340
    Input text                          request_custom_fields_22732340     ${timeInput}      clear=True

    #typw of call
    Wait until element is visible       //*[@id="new_request"]/div[38]/a
    Select From List By Index           //*[@id="new_request"]/div[38]/a    2       #2 for prerecorded voice

    #given permission to call y/n
    Wait until element is visible       //*[@id="new_request"]/div[39]/a
    Select From List By Index           //*[@id="new_request"]/div[39]/a        2       #2 for no

    #received caller id?
    Wait until element is visible       //*[@id="new_request"]/div[42]/a
    Select From List By Index           //*[@id="new_request"]/div[42]/a        1       #1 for yes

    #caller's business name?
    Wait until element is visible       //*[@id="new_request"]/div[45]/a
    Select From List By Index           //*[@id="new_request"]/div[45]/a        3       #3 for uncertain

    #advertiser's phone num
    Wait until element is visible       request_custom_fields_22659924
    Input text                          request_custom_fields_22659924     ${phoneNumz}      clear=True

    #additional info
    Wait until element is visible       request_custom_fields_22664784
    Input text                          request_custom_fields_22664784     ${additionalInfo}      clear=True

    #First Name
    Wait until element is visible       request_custom_fields_22539594
    Input text                          request_custom_fields_22539594     ${firstName}      clear=True

    #Last Name
    Wait until element is visible       request_custom_fields_22704720
    Input text                          request_custom_fields_22704720     ${lastName}      clear=True

    #Street Address
    Wait until element is visible       request_custom_fields_22554824
    Input text                          request_custom_fields_22554824     ${streetAddress}      clear=True

    #City
    Wait until element is visible       request_custom_fields_22554844
    Input text                          request_custom_fields_22554844     ${city}      clear=True

    #state
    Wait until element is visible       //*[@id="new_request"]/div[73]/a
    Select From List By Value           //*[@id="new_request"]/div[73]/a        ${state}       #3 for uncertain

    #zip
    Wait until element is visible       request_custom_fields_22540124
    Input text                          request_custom_fields_22540124     ${zip}      clear=True

    #Phone to reach you
    Wait until element is visible       request_custom_fields_22615094
    Input text                          request_custom_fields_22615094     ${myPhone}      clear=True

    #filing for someone else?
    Wait until element is visible       //*[@id="new_request"]/div[76]/a
    Select From List By Index           //*[@id="new_request"]/div[76]/a        2       #2 for no

    #Checkbox to attest
    Wait until element is visible       request_custom_fields_22625624
    Click Element                       request_custom_fields_22625624

    Wait until element is visible       //*[@id="new_request"]/footer/input

*** Keywords ***

Open Browser to Duck Duck Go
    #Open Browser               ${BROWSER}  add_argument("--headless");add_argument("--start-maximized")
    Open Browser                https://www.duckduckgo.com     ${BROWSER}  #uncoment this for regular browser UI and comment above to disable headless
    Maximize Browser Window  #uncoment this for regular browser UI
