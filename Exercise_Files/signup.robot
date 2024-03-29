*** Settings ***
Library         String
Library         SeleniumLibrary
Library         OperatingSystem

Suite Setup            Open Browser to Duck Duck Go
Suite Teardown           close Browser

*** Variables ***
#${BROWSER}                  headlessfirefox     #comment this for regular browser experience
${BROWSER}                    chrome    #uncomment this to test via Firefox
#${BROWSER}                  geckodriver    #uncomment this to test via Firefox
${kingCounty}               https://kingcounty.gov/depts/transportation/metro/alerts-updates/signup.aspx
${kingCountyExisting}       https://public.govdelivery.com/accounts/WAKING/subscriber/new
${nyMetro}                  https://mymtaalerts.com/Subscribe.aspx

${phoneNum}                 (509) 236-3003     #
#${phoneNum}                 (509) 236-1901     #1ed82QBY
#${phoneNum}                 (845) 777-7123     #uZqDIpMx
#${phoneNum}                 (509) 239-7060     #MaxT0edw
#${phoneNum}                 (509) 245-0746     #E4rKNcee
#${phoneNum}                 (206) 800-0149     #8pzF3c1us
#${phoneNum}                 (509) 261-4150     #rHvz0ynD
#${phoneNum}                 (509) 261-4151     #4ORh2Ynw
#${phoneNum}                 (269) 697-1806     #Hhaqr1JU
#${phoneNum}                 (509) 250-8059     #JGV4u76k
#${phoneNum}                 (206) 567-7634     #CPhOm6a9
#${phoneNum}                 (509) 250-8016     #ekOIS50R
#${phoneNum}                 (509) 261-4147     #XZ4pXa86
#${phoneNum}                 (509) 261-4144     #0BAlCFDz
#${phoneNum}                 (909) 923-9925     #czvhpiIx
#${phoneNum}                 (206) 603-5397     #Fa2zO9w5
#${phoneNum}                 (206) 758-9395     #x4QtcmuB
#${phoneNum}                 (206) 589-5065     #NR1mqA9b
#${phoneNum}                 (206) 309-8552     #QwDzXmYb
#${phoneNum}                 (509) 261-4146     #tbPJCWpj
#${phoneNum}                 (509) 261-4138     #pFrEt6CI
#${phoneNum}                 (918) 297-6848     #p4xDeGzx
#${phoneNum}                 (206) 208-9433     #NtlVYhQt
#${phoneNum}                 (909) 716-4016     #WLq0Nmmq
#${phoneNum}                 (509) 261-4133     #w3pmRHX8
#${phoneNum}                 (405) 695-6273     #nxxksR8A
#${phoneNum}                 (510) 679-1628     #32L6bsyr
#${phoneNum}                 (406) 763-8448     #cVQa5MoB
#${phoneNum}                 (509) 245-0104     #2Aqm1HsE
#${phoneNum}                 (509) 261-4131     #W1MId9HQ
#${phoneNum}                 (509) 236-1819     #ROrX0W9h
#${phoneNum}                 (509) 261-4129     #7N0OEAYw
#${phoneNum}                 (206) 746-3055     #EBBXC1TS
#${phoneNum}                 (509) 245-0098     #sSP83KAc
#${phoneNum}                 (813) 296-6168     #QqVT1dvl
#${phoneNum}                 (509) 236-1670     #8qHx85LI
#${phoneNum}                 (509) 236-5308     #Q3N9SU27
#${phoneNum}                 (206) 594-5329     #MFAV1XKv
#${phoneNum}                 (760) 205-5078     #uVFfK2LT
#${phoneNum}                 (206) 800-0488     #4UOCZJCI
#${phoneNum}                 (213) 442-7162     #VgPMTxQ8
#${phoneNum}                 (509) 236-4879     #ovcbHsAM
#${phoneNum}                 (509) 236-1807     #h4ofoooA
#${phoneNum}                 (509) 236-1840     #7Ittu5Qu
#${phoneNum}                 (509) 236-1499     #QWYK5GgT
#${phoneNum}                 (425) 310-1324     #68YnNAPw
#${phoneNum}                 (509) 236-1789     #0cegzYla
#${phoneNum}                 (314) 207-3015     #7ytiEbci
#${phoneNum}                 (509) 245-0089     #lyQxHNbT
#${phoneNum}                 (509) 245-0088     #mbSq1UR1
#${phoneNum}                 (509) 236-1592     #NAm6gE4u
#${phoneNum}                 (509) 233-7425     #haYZ26TV
#${phoneNum}                 (708) 400-9413     #x7OHAq0y
#${phoneNum}                 (509) 236-1570     #GZEQ0xAO
#${phoneNum}                 (509) 236-1536     #QqFGPIYZ
#${phoneNum}                 (509) 236-1540     #diGgTBn8
#${phoneNum}                 (509) 233-7398     #ZTfSW54X
#${phoneNum}                 (509) 236-1293     #NoM0o1Zm
#${phoneNum}                 (352) 462-2680     #V6THnD6a
#${phoneNum}                 (802) 328-1949     #gz0P8rEl
#${phoneNum}                 (916) 399-3743     #lN9Eq9fy
#${phoneNum}                 (415) 896-9854     #mIJalLAb
#${phoneNum}                 (626) 248-7740     #bJjhjJr0
#${phoneNum}                 (509) 233-7395     #BrFnL7qU
#${phoneNum}                 (972) 544-6353     #ZrvmfOzg
#${phoneNum}                 (509) 233-7392     #57cjuWNx
#${phoneNum}                 (360) 634-4415     #agp1mOSU
#${phoneNum}                 (424) 339-1663     #Uz4cmfbg
#${phoneNum}                 (661) 353-8889     #JCpNLsMA
#${phoneNum}                 (831) 824-7488     #f92OruUN
#${phoneNum}                 (646) 945-1944     #ZzZqdZu4
#${phoneNum}                 (206) 800-0842     #Rx38OI9E
#${phoneNum}                 (206) 800-0842     #Rx38OI9E
#${phoneNum}                 (509) 233-7391     #4xO9DJV3
#${phoneNum}                 (509) 233-7390     #CWppAMiA
#${phoneNum}                 (509) 236-1484     #qVWOlMNA
#${phoneNum}                 (205) 291-8984     #TcIy7I9P
#${phoneNum}                 (206) 291-8984     #RZ2i7EbK
#${phoneNum}                 (206) 594-1782     #4EtYZ7tZ
#${phoneNum}                 (509) 236-1462     #6H7I6Ymu
#${phoneNum}                 (509) 236-1449     #aLeroJjN
#${phoneNum}                 (509) 236-1434     #IzXOBMvs
#${phoneNum}                 (509) 236-1436     #i6OCxxcj
#${phoneNum}                 (916) 596-6122     #kmCDoSQ9
#${phoneNum}                 (509) 233-7124     #w4CayVjv
#${phoneNum}                 (509) 245-0074     #y2DVqx8q
#${phoneNum}                 (509) 245-0072     #9XRKwjCn
#${phoneNum}                 (206) 339-9187     #Mb3ouM7x
#${phoneNum}                 (707) 846-1821     #meCFnKDY
#${phoneNum}                 (509) 233-7069     #JbOP6DlW
#${phoneNum}                 (509) 245-0070     #052RJY5k
#${phoneNum}                 (509) 236-1427     #NLcHmk9r
#${phoneNum}                 (509) 236-1426     #ghtoSf2g
#${phoneNum}                 (509) 233-7067     #xJdfMcsw
#${phoneNum}                 (509) 245-0069     #1nFEXwbf
#${phoneNum}                 (509) 261-4123     #InJapd5L
#${phoneNum}                 (509) 261-4122     #tgzArkjc
#${phoneNum}                 (204) 905-9168     #LfIioOHn
#${phoneNum}                 (509) 261-4111     #bONM9Joj
#${phoneNum}                 (360) 392-5741     #yFC36iqr
#${phoneNum}                 (509) 261-4112     #PHOaqdc0
#${phoneNum}                 (850) 745-4948     #9M7wtx4k
#${phoneNum}                 (248) 716-4532     #92HfZKY3
#${phoneNum}                 (401) 400-7854     #6sNRjNpg
#${phoneNum}                 (509) 236-1359     #hOds7gLL
#${phoneNum}                 (509) 236-1398     #F1rQDu0g
#${phoneNum}                 (509) 236-1357     #GtZsrtv2
#${phoneNum}                 (813) 236-1357     #0GtPDIb5
#${phoneNum}                 (647) 378-7764     #FCKbvrCW
#${phoneNum}                 (647) 520-1197     #dFtyTIqQ
#${phoneNum}                 (509) 261-4110     #cUvaRDf2
#${phoneNum}                 (509) 261-4107     #I339EQFf
#${phoneNum}                 (509) 261-4109     #mrkSgm3U
#${phoneNum}                 (509) 261-4108     #OhFdGouq
#${phoneNum}                 (509) 261-4106     #hFrERheK
#${phoneNum}                 (509) 245-0060     #0iRoioJt
#${phoneNum}                 (509) 236-1027     #F2o5z9M9
#${phoneNum}                 (813) 295-7718     #4Qwb1rSI
#${phoneNum}                 (509) 245-0059     #3tYSHNJ9
#${phoneNum}                 (509) 245-0056     #U25Eg7E0
#${phoneNum}                 (509) 245-0057     #ounAxnEK
#${phoneNum}                 (509) 236-1023     #3CEIMa8J
#${phoneNum}                 (509) 261-4104     #rUrD64oN
#${phoneNum}                 (416) 951-3624     #9PHmlcWN
#${phoneNum}                 (509) 261-4102     #AZpy5qtK
#${phoneNum}                 (323) 903-7879     #cLnslHDY
#${phoneNum}                 (304) 371-4237     #8atcYYAb
#${phoneNum}                 (647) 807-5095     #zpzG2Tcn
#${phoneNum}                 (747) 266-9074     #Le92cIBY
#${phoneNum}                 (226) 724-6192     #Z8kUEVo4
#${phoneNum}                 (909) 961-8644     #BKvRj8Az
#${phoneNum}                 (844) 435-4055     #GitPadg5
#${phoneNum}                 (916) 439-8467     #8nlCJAYN
#${phoneNum}                 (518) 400-0435     #wuHTQd0s
#${phoneNum}                 (434) 757-4748     #iwaDnJZe
#${phoneNum}                 (509) 935-1007     #5myBwDqP
#${phoneNum}                 (956) 255-1165      #A3wwaN5o
#${phoneNum}                 (269) 301-0584      #zIAHgp8V
#${phoneNum}                 (803) 848-9470      #io7Lm2gT
#${phoneNum}                 (509) 250-8953      #4dHzLKlE
#${phoneNum}                 (509) 297-2023      #MPB2gofD
#${phoneNum}                 (830) 221-4167      #mBg44mcD
#${phoneNum}                 (206) 339-5240      #Pp8Cb7Ca
#${phoneNum}                 (509) 261-4080      #OOO8lMo5
#${phoneNum}                 (714) 924-4830      #6SSkl9bM
#${phoneNum}                 (509) 261-4090      #J21hl4zA
#${phoneNum}                 (509) 261-4088      #R54XZCfl
#${phoneNum}                 (509) 261-4098      #gAQrs0it
#${phoneNum}                 (509) 250-8941      #mCDeeqCJ
#${phoneNum}                 (509) 266-0001      #ThU26QcL
#${phoneNum}                 (509) 250-8947      #LltnMHWm
#${phoneNum}                 (509) 250-0050      #sei0mIGG
#${phoneNum}                 (509) 250-8009      #n0fhAQb3
#${phoneNum}                 (214) 730-5041      #fJ3InnoK
#${phoneNum}                 (509) 245-0050      #CzogGn1o
#${phoneNum}                 (954) 990-1758      #sNreK96B
#${phoneNum}                 (509) 250-8579      #TGn76pwl
#${phoneNum}                 (516) 823-7641      #4pIirMvP
#${phoneNum}                 (509) 408-3079      #ZpdgebI5
#${phoneNum}                 (509) 261-4100      #4dQjvek2


#${existingphoneNum}                 (510) 977-8227‬
#${existingphoneNum}                 (646) 480-9968
#${existingPhoneNum}         2068675309   #O5TZvW8g   pwd
${existingPhoneNum}         5092363003
${existingPwd}              QiZvFNvm
#${existingPwd}              O5TZvW8g
#${existingPwd}              3043714237    #unknown password
#${existingPwd}              6fXN6S8E
#${existingPhoneNum}         2066030093     #6fXN6S8E PWD
#${existingPwd}              Lr3lAnMl
@{elements}                   c17076_t37177      c17076_t37190      c17076_t37192      c17076_t46522      c17076_t214470      c17076_t219979      c17076_t221746      c17076_t262340      c17076_t266720      c17076_t270830      c17076_t333348      c17076_t429594      c17076_t433380     c17076_t606436     c17076_t457397     c17076_t513894     c17076_t439761     c17076_t439759     c17076_t462797     c17076_t478604     c17076_t654971        c913652_t626108      c17076_t429594      c17065_t36920      c17065_t36985      c17065_t37170     c17065_t36978     c17065_t37171     c17065_t37141     c17065_t37172     c17065_t36949     c17065_t37142     c17065_t37143     c17065_t37144     c17065_t36921     c17065_t37165     c17065_t37034     c17065_t632244     c17065_t37167     c17065_t37093     c17065_t37168     c17065_t633868     c17065_t37136     c17065_t37169     c17065_t37175     c17066_t37095      c17066_t37096      c17066_t162347      c17066_t37048      c17066_t162346      c17066_t36976      c17066_t36959      c17066_t36960      c17066_t162344      c17066_t37081      c17066_t36962      c17066_t36963      c17066_t162345      c17066_t37133      c17066_t37145      c17067_t162343      c17067_t37053      c17067_t37135       c17067_t37054      c17067_t37033      c17067_t162302      c17067_t37055      c17067_t37146      c17067_t36986      c17067_t36923       c17067_t37098       c17067_t36925       c17067_t633869      c17067_t36931      c17068_t36937      c17068_t36934      c17068_t37069      c17068_t36935      c17068_t36938      c17068_t36940      c17068_t37070      c17068_t36951      c17068_t36941      c17068_t37071      c17068_t37072      c17068_t36952      c17068_t37073      c17068_t36942      c17068_t36953      c17068_t36954      c17068_t36982      c17068_t36943      c17068_t37112      c17068_t37176      c17068_t36946      c17068_t36947      c17069_t36948      c17069_t37099      c17069_t37075      c17069_t37193      c17069_t37027      c17069_t568592      c17069_t568593      c17069_t568594      c17069_t568597      c17069_t37140      c17069_t36957      c17069_t37151      c17069_t134162      c17069_t36919      c17069_t37153      c17069_t37154      c17069_t37155      c17069_t568598      c17069_t37156      c17069_t37157      c17069_t37059      c17069_t37159      c17070_t37115      c17070_t37116      c17070_t37117      c17070_t221301      c17070_t37106      c17070_t36964      c17070_t36965      c17070_t37163      c17070_t36966     c17070_t37068     c17070_t37164      c17070_t37058     c17070_t560010     c17070_t72985     c17070_t560012      c17070_t565326      c17070_t36989      c17070_t36990      c17070_t565346      c17070_t37046      c17070_t72987      c17070_t36994      c17070_t37188      c17070_t36968     c17071_t566666      c17071_t36998      c17071_t37178      c17071_t37120      c17071_t37122      c17071_t37123      c17071_t36973      c17072_t37125      c17072_t633870      c17072_t37126      c17072_t37003      c17072_t37127      c17072_t633823      c17072_t633824      c17072_t36996      c17072_t36997      c17072_t37038      c17072_t37019      c17072_t37020      c17072_t37082      c17072_t37021      c17072_t37023      c913671_t37149     c913671_t72984      c913671_t162283      c913671_t162284      c913671_t234581      c913671_t243919      c914912_t71738      c914912_t271031      c914912_t37030      c914912_t37042      c914912_t37060      c914912_t37061      c914912_t37062      c914912_t37063      c914912_t37044      c914912_t37031      c17073_t37008      c17073_t37009      c17073_t221326      c17073_t110132      c17073_t37089      c17073_t110133      c17073_t37015      c17073_t37002      c17073_t110142      c17073_t37026      c17073_t37084      c17073_t462859      c17073_t462858      c17073_t288349      c17073_t288360      c17073_t448487      c17073_t580974      c17073_t271018      c17078_t323233      c17078_t37091      c110313_t233513      c110313_t360053      c110313_t261137      c110313_t251551       c109474_t247950      c109474_t283695      c109476_t230021      c104096_t222382      c104096_t223878       c104096_t223880       c104096_t468192      c104097_t222403      c104097_t222404      c104097_t222406      c116717_t284426      c116717_t302097      c112725_t241843      c112725_t241844      c112725_t241845       c112725_t241846      c112725_t241847      c112725_t241828      c112725_t241829      c112725_t421380      c112725_t411966      c112725_t435939      c89599_t336754      c89599_t181460      c89599_t327872      c89599_t332751      c89599_t229252      c89599_t253089      c89599_t327580      c89599_t344958      c89599_t434831      c89599_t460720      c89599_t498005      c89599_t498006      c89599_t579418      c89599_t585314      c112340_t289693      c89600_t181451      c89600_t238200      c89600_t181417      c89600_t181416      c89600_t213791      c89600_t213792      c89600_t234218      c89600_t236902      c89600_t236908      c89600_t250954      c89600_t241411      c89600_t284833      c89600_t285679      c89600_t286687      c89600_t286971      c89600_t288126      c89600_t289097      c89600_t305851      c89600_t419929      c89600_t452080      c89600_t455713      c89600_t451720      c89600_t462549      c89600_t557858      c89600_t613689      c123521_t313507      c123521_t378285      c123521_t419775      c123521_t456594      c123521_t359255       c123521_t181459      c123521_t343212      c123521_t313605      c123521_t345793      c123521_t498005      c123521_t498006      c123521_t573491      c123521_t579418      c123521_t648556      c112425_t241075      c112425_t229245      c112425_t286403      c112425_t288127      c112425_t329020      c112425_t329021      c112425_t328988      c112425_t392519      c112425_t422163      c112425_t452073      c112425_t452074      c112425_t452077      c112425_t465704      c112425_t468113      c112425_t487375      c112425_t496542      c112425_t553875      c112425_t614404      c112425_t650166      c112425_t650134      c112425_t650168      c112425_t650170      c112425_t650173      c20894_t52387      c20894_t537944      c20894_t114402      c20894_t434831      c20883_t52380      c20886_t537944      c20886_t52375      c20886_t52399      c20886_t322174      c20886_t497276      c20887_t128063      c20888_t52367      c20889_t343212      c20889_t434831      c20889_t636087      c20889_t636088      c20889_t636089      c20890_t52376      c20891_t52364      c20891_t52378      c20896_t214154      c897158_t542965      c897158_t214154      c20881_t52401      c897839_t542965      c897839_t52401      c897839_t57726      c103855_t221109      c117045_t252315      c102451_t218008      c102451_t217991      c102451_t217992      c102451_t229470      c102451_t291003      c97632_t366617      c117061_t252331      c117061_t252310      c117061_t259728      c116506_t249748      c116506_t585314      c95813_t296369      c95813_t326544      c108311_t585314      c124118_t217991      c133184_t303389      c138808_t269653      c875560_t269653      c869466_t269653      c869466_t366617      c869466_t454596
@{needToExpand}               c_li_17065     c_li_17066     c_li_17067     c_li_17068     c_li_17069     c_li_17070     c_li_17071     c_li_17072     c_li_17073     c_li_17078     c_li_20894

*** Test Cases ***

Start KC signingup!
    [Tags]      KC
    #create the size 8 password
    ${pwd}=                                 Generate Random String      8       [LETTERS][NUMBERS]
    log                                     _ ${pwd}                console=yes
    Go to                                   ${kingCounty}    #uncoment this for regular browser UI and comment above to disable headless

    Wait until element is visible           subscription_type

    log                                     Selecting Phone number           console=yes
    Select From List By Value               subscription_type       phone
    capture element screenshot              subscription_type       embed
    Wait until element is visible           //*[@id="phone"]
    Input text                              //*[@id="phone"]        ${phoneNum}              clear=True

    log                                     inputting phone number ${phoneNum} into page           console=yes

    Wait until element is visible           //*[@id="GD-snippet-form"]/div/input
    log                                     Waiting on button           console=yes
    click button                            //*[@id="GD-snippet-form"]/div/input
    log                                       clicking Submit button           console=yes
    capture page screenshot                 embed

    #next page
    log                                     Waiting on Wireless Number Page           console=yes
    wait until element is visible           //*[@id="subscriber_phone_confirm"]
    Input text                              //*[@id="subscriber_phone_confirm"]        ${phoneNum}              clear=True
    log                                     Inserted Wireless Number Page           console=yes

    wait until element is visible           //*[@id="subscriber_password"]
    Input text                              //*[@id="subscriber_password"]          ${pwd}              clear=True
    log                                     Typed Bogus Password           console=yes

    wait until element is visible           //*[@id="subscriber_password_confirm"]
    Input text                              //*[@id="subscriber_password_confirm"]      ${pwd}              clear=True
    log                                       confirmed Bogus Password           console=yes

    wait until element is visible           //*[@id="subscriber_privacy_consent"]
    click element                           //*[@id="subscriber_privacy_consent"]
    log                                       click the consent           console=yes

    wait until element is visible           //*[@id="col3"]/form/div[4]/input[1]
    click element                           //*[@id="col3"]/form/div[4]/input[1]
    log                                     Yo! Solve the Captcha you have 40 seconds!           console=yes
    #Sleep                                   40
    log                                       click the submit button           console=yes
    capture page screenshot                 embed

    Wait until element is visible           help            10

    FOR   ${j}    IN   @{needToExpand}
        log   ${j}
        Scroll Element Into View    ${j}
        click button                //*[@id="${j}"]/button
        #Capture Page Screenshot         embed
    END

    FOR   ${i}    IN   @{elements}
        log   ${i}
        Scroll Element Into View    ${i}
        click button                ${i}
        #Capture Page Screenshot         embed
    END

    #submit all checked
    Wait until element is visible           //*[@id="subscriber_subscriptions_form"]/div[2]/input[1]     10
    click button                            //*[@id="subscriber_subscriptions_form"]/div[2]/input[1]

    #log out
    Scroll Element Into View                //*[@id="col3"]/p[1]/a
    Wait until element is visible           //*[@id="col3"]/p[1]/a       10
    #click button                            //*[@id="col3"]/p[1]/a

Existing signup
    [Tags]      existing_signup
    #[Arguments]          @{elements}
    log                                     ${existingPwd}                console=yes
    Go to                            ${kingCountyExisting}         #uncoment this for regular browser UI and comment above to disable headless
    Maximize Browser Window                 #uncoment this for regular browser UI
    Wait until element is visible           subscription_type

    log                                     Selecting Phone number           console=yes
    Select From List By Value               subscription_type       phone
    #Capture element screenshot              subscription_type       embed
    Wait until element is visible           phone
    #Clear element text                      phone
    Input text                              phone        ${existingPhoneNum}              clear=True
    log                                     inputting phone number ${existingPhoneNum} into page           console=yes
    Wait until element is visible           //*[@id="quick_subscribe_new"]/div[2]/input[1]
    log                                     Waiting on button                                     console=yes
    click button                           //*[@id="quick_subscribe_new"]/div[2]/input[1]
    log                                       clicking Submit button                                console=yes
    capture page screenshot                 embed

    Wait until element is visible           password        10
    #Clear element text                      password
    Input password                           password        ${existingPwd}               clear=True
    #Wait until element is visible           //*[@id="quick_subscribe_password_prompt"]/div[2]/input[1]
    #  capture page screenshot                 embed
    click button                            //*[@id="quick_subscribe_password_prompt"]/div[2]/input[1]

    Wait until element is visible           help            10

    FOR   ${j}    IN   @{needToExpand}
        log   ${j}
        Scroll Element Into View    ${j}
        click button                //*[@id="${j}"]/button
        #Capture Page Screenshot         embed
    END

    FOR   ${i}    IN   @{elements}
        log   ${i}
        Scroll Element Into View    ${i}
        click button                ${i}
        #Capture Page Screenshot         embed
    END

    #submit all checked
    Wait until element is visible           //*[@id="subscriber_subscriptions_form"]/div[2]/input[1]     10
    click button                            //*[@id="subscriber_subscriptions_form"]/div[2]/input[1]

    #log out
    #Scroll Element Into View                //*[@id="col3"]/p[1]/a
    #Wait until element is visible           //*[@id="col3"]/p[1]/a       10
    #click button                            //*[@id="col3"]/p[1]/a



#Signup for CilckSend
#    Open Browser        https://dashboard.clicksend.com/#/signup/step0       ${BROWSER}  add_argument("--headless");add_argument("--start-maximized")

Search all links
    [Tags]   data_extract
    BuiltIn.Set Log Level                           NONE

    ${grabHTML}=     OperatingSystem.Get File     KC.html

    FOR     ${i}        IN RANGE        17076    869466
        ${isElementVisible}=      Get Count         ${grabHTML}   id="c_li_${i}"
        IF   ${isElementVisible} == 1
            log    //*[@id="c_li_${i}"]/button exists    WARN
        END
        FOR    ${j}    IN RANGE          35000    650173
            ${isElementExisting}=      Get Count         ${grabHTML}   id="c${i}_t${j}"
            IF    ${isElementExisting} == 1
                log    id="c${i}_t${j}" checkbox exists    WARN
            END
        END
    END
    #[ WARN ] //*[@id="c_li_17076"]/button exists
    #[ WARN ] id="c17076_t37177" checkbox exists
    #[ WARN ] id="c17076_t37190" checkbox exists
    #[ WARN ] id="c17076_t37192" checkbox exists
    #[ WARN ] id="c17076_t46522" checkbox exists
    #[ WARN ] id="c17076_t214470" checkbox exists
    #[ WARN ] id="c17076_t219979" checkbox exists
    #[ WARN ] id="c17076_t221746" checkbox exists
    #[ WARN ] id="c17076_t262340" checkbox exists
    #[ WARN ] id="c17076_t266720" checkbox exists
    #[ WARN ] id="c17076_t270830" checkbox exists
    #[ WARN ] id="c17076_t333348" checkbox exists
    #[ WARN ] id="c17076_t382341" checkbox exists
    #[ WARN ] id="c17076_t382342" checkbox exists
    #[ WARN ] id="c17076_t382358" checkbox exists
    #[ WARN ] id="c17076_t382359" checkbox exists
    #[ WARN ] id="c17076_t382360" checkbox exists
    #[ WARN ] id="c17076_t382363" checkbox exists
    #[ WARN ] id="c17076_t427225" checkbox exists
    #[ WARN ] id="c17076_t429594" checkbox exists
    #[ WARN ] id="c17076_t433380" checkbox exists
    #[ WARN ] id="c17076_t439759" checkbox exists
    #[ WARN ] id="c17076_t439761" checkbox exists
    #[ WARN ] id="c17076_t457397" checkbox exists
    #[ WARN ] id="c17076_t462797" checkbox exists
    #[ WARN ] id="c17076_t478604" checkbox exists
    #[ WARN ] id="c17076_t513894" checkbox exists
    #[ WARN ] id="c17076_t606436" checkbox exists
    #[ WARN ] //*[@id="c_li_17077"]/button exists
    #[ WARN ] id="c17077_t37182" checkbox exists
    #[ WARN ] id="c17077_t233189" checkbox exists
    #[ WARN ] //*[@id="c_li_17078"]/button exists
    #[ WARN ] id="c17078_t37091" checkbox exists
    #[ WARN ] id="c17078_t323233" checkbox exists



Log in loop all options
    [Tags]      loop_options
    BuiltIn.Set Log Level                           NONE
    ${pwd}=                                 set variable        Lr3lAnMl
    log                                     ${pwd}                console=yes
    Open Browser                            ${kingCountyExisting}       ${BROWSER}  #uncoment this for regular browser UI and comment above to disable headless
    Maximize Browser Window                 #uncoment this for regular browser UI
    Wait until element is visible           subscription_type

    log                                     Selecting Phone number           console=yes
    Select From List By Value               subscription_type       phone
    #Capture element screenshot              subscription_type       embed
    Wait until element is visible           phone
    #Clear element text                      phone
    Input text                              phone        ${phoneNum}              clear=True
    log                                     inputting phone number ${phoneNum} into page           console=yes
    Wait until element is visible           //*[@id="quick_subscribe_new"]/div[2]/input[1]
    log                                     Waiting on button                                     console=yes
      click button                           //*[@id="quick_subscribe_new"]/div[2]/input[1]
    log                                       clicking Submit button                                console=yes
    #Capture page screenshot                 embed

    Wait until element is visible           password        10
    #Clear element text                      password
    Input password                           password        ${pwd}               clear=True
    Wait until element is visible           //*[@id="quick_subscribe_password_prompt"]/div[2]/input[1]
      click button                            //*[@id="quick_subscribe_password_prompt"]/div[2]/input[1]

    Wait until element is visible           help            10
    FOR     ${i}        IN RANGE        17076    869466
        #check if button is visible
        ${isElementVisible}=      Get Element Count        //*[@id="c_li_${i}"]/button   #//*[@id="c_li_17076"]/button
        #${isElementVisible}=      Run Keyword And Return Status       Page Should Contain Element        //*[@id="c_li_${i}"]/button   #//*[@id="c_li_17076"]/button
        #scroll to the element
        IF      ${isElementVisible} == True
            log    //*[@id="c_li_${i}"]/button exists    WARN
            #scroll and focus on that element
            Scroll Element Into View         //*[@id="c_li_${i}"]/button   #//*[@id="c_li_17076"]/button
            #Capture element screenshot      //*[@id="c_li_${i}"]/button     embed

            #check if it is expanded
            ${isElementExpanded}=       Get Element Attribute       //*[@id="c_li_${i}"]/button            aria-expanded

            #if not expanded. proceed to click it
            IF      "${isElementExpanded}" == "false"
                 click        //*[@id="c_li_${i}"]/button   #//*[@id="c_li_17076"]/button

               #check one more time to ensure it is expanded
#               ${isElementExpanded}=       Get Element Attribute       //*[@id="c_li_${i}"]/button            aria-expanded
#               Should Be Equal      "${isElementExpanded}"     "true"

#               #run through the sub titles and check the boxes
#               FOR    ${j}    IN RANGE          37177    454596
#                    ${isElementVisible}=         Get Element Count      //*[@id="c${i}_t${j}"]
#                    #${isElementVisible}=         Run Keyword And Return Status      Page Should Contain Element      //*[@id="c${i}_t${j}"]
#                    IF    ${isElementVisible} == True
#                        Scroll Element Into View         //*[@id="c${i}_t${j}"]         #check if button is present //*[@id="c17076_t37177"]
#                          click element                   //*[@id="c${i}_t${j}"]
#                        log    //*[@id="c${i}_t${j}"] exists    WARN
#                        #Capture element screenshot      //*[@id="c${i}_t${j}"]    embed
#                    END
#               END
            END
            #ELSE
               #run through the sub titles and check the boxes
               FOR    ${j}    IN RANGE          37177    454596
                    ${isElementVisible}=         Get Element Count      //*[@id="c${i}_t${j}"]
                    #${isElementVisible}=         Run Keyword And Return Status      Page Should Contain Element      //*[@id="c${i}_t${j}"]
                    IF    ${isElementVisible} == True
                        Scroll Element Into View         //*[@id="c${i}_t${j}"]         #check if button is present //*[@id="c17076_t37177"]
                          click element                   //*[@id="c${i}_t${j}"]
                        log    //*[@id="c${i}_t${j}"] exists    WARN
                        #Capture element screenshot      //*[@id="c${i}_t${j}"]    embed
                    END
               END
            #END
        END
    END


Start NY Metro Signup!
    [Tags]      start_NYsignup
    ${pwd}=                                 Generate Random String      8       [LETTERS][NUMBERS]
    log                                     ${pwd}                console=yes
    ${usr}=                                 Generate Random String      8       [LETTERS]
    log                                     pwd: ${usr}                console=yes
    Go to                                   ${nyMetro}       #uncoment this for regular browser UI and comment above to disable headless

    Wait until element is visible           ctl00_ContentPlaceHolder1_txtUserID
    Input text                              ctl00_ContentPlaceHolder1_txtUserID     ${usr}      clear=True
    log                                     inputting UserID ${usr} into page           console=yes

    Wait until element is visible           ctl00_ContentPlaceHolder1_txtPassword
    Input text                              ctl00_ContentPlaceHolder1_txtPassword     ${pwd}      clean=True
    log                                     inputting Password ${pwd} into page           console=yes

    Wait until element is visible           ctl00_ContentPlaceHolder1_rbtnDeviceTypeSms
    click element                           ctl00_ContentPlaceHolder1_rbtnDeviceTypeSms

    Wait until element is visible           ctl00_ContentPlaceHolder1_txtSms
    Input Text                              ctl00_ContentPlaceHolder1_txtSms     ${existingPhoneNum}    clear=True

    Wait until element is visible           //*[@id="ctl00_ContentPlaceHolder1_DDL_Carrier"]
    Select From List By Value               //*[@id="ctl00_ContentPlaceHolder1_DDL_Carrier"]        31079    #virgin

    #expand all 6:
    FOR  ${i}  IN  1  2  3  4  5  6
        Scroll Element Into View         //*[@id="ctl00_ContentPlaceHolder1_pnbSubscriptions"]/ul/li[${i}]/a/span/span[1]
        Wait until element is visible    //*[@id="ctl00_ContentPlaceHolder1_pnbSubscriptions"]/ul/li[${i}]/a/span/span[1]
        click element                    //*[@id="ctl00_ContentPlaceHolder1_pnbSubscriptions"]/ul/li[${i}]/a/span/span[1]
    END

    FOR  ${j}   IN   2  3  5
        FOR   ${i}  IN  2  3  4  5
            Scroll Element Into View         //*[@id="ctl00_ContentPlaceHolder1_pnbSubscriptions"]/ul/li[${j}]/div/ul/li[${i}]/a/span/span[1]
            Wait until element is visible    //*[@id="ctl00_ContentPlaceHolder1_pnbSubscriptions"]/ul/li[${j}]/div/ul/li[${i}]/a/span/span[1]
            click element                    //*[@id="ctl00_ContentPlaceHolder1_pnbSubscriptions"]/ul/li[${j}]/div/ul/li[${i}]/a/span/span[1]
        END
        IF  ${j} == 3
            Scroll Element Into View         //*[@id="ctl00_ContentPlaceHolder1_pnbSubscriptions"]/ul/li[${j}]/div/ul/li[6]/a/span/span[1]
            Wait until element is visible    //*[@id="ctl00_ContentPlaceHolder1_pnbSubscriptions"]/ul/li[${j}]/div/ul/li[6]/a/span/span[1]
            click element                    //*[@id="ctl00_ContentPlaceHolder1_pnbSubscriptions"]/ul/li[${j}]/div/ul/li[6]/a/span/span[1]
        ELSE IF   ${j} == 5
            Scroll Element Into View         //*[@id="ctl00_ContentPlaceHolder1_pnbSubscriptions"]/ul/li[${j}]/div/ul/li[6]/a/span/span[1]
            Wait until element is visible    //*[@id="ctl00_ContentPlaceHolder1_pnbSubscriptions"]/ul/li[${j}]/div/ul/li[6]/a/span/span[1]
            click element                    //*[@id="ctl00_ContentPlaceHolder1_pnbSubscriptions"]/ul/li[${j}]/div/ul/li[6]/a/span/span[1]
        END
    END

    Scroll Element Into View            ctl00_ContentPlaceHolder1_pnbSubscriptions_i1_lnkSelectAllNYC
    Wait until element is visible       ctl00_ContentPlaceHolder1_pnbSubscriptions_i1_lnkSelectAllNYC
    click element                       ctl00_ContentPlaceHolder1_pnbSubscriptions_i1_lnkSelectAllNYC

    Scroll Element Into View            ctl00_ContentPlaceHolder1_pnbSubscriptions_i2_i1_lnkSelectAllEEBX
    Wait until element is visible       ctl00_ContentPlaceHolder1_pnbSubscriptions_i2_i1_lnkSelectAllEEBX
    click element                       ctl00_ContentPlaceHolder1_pnbSubscriptions_i2_i1_lnkSelectAllEEBX

    Scroll Element Into View            ctl00_ContentPlaceHolder1_pnbSubscriptions_i2_i2_lnkSelectAllEEBKN
    Wait until element is visible       ctl00_ContentPlaceHolder1_pnbSubscriptions_i2_i2_lnkSelectAllEEBKN
    click element                       ctl00_ContentPlaceHolder1_pnbSubscriptions_i2_i2_lnkSelectAllEEBKN

    Scroll Element Into View            ctl00_ContentPlaceHolder1_pnbSubscriptions_i2_i3_lnkSelectAllEEMN
    Wait until element is visible       ctl00_ContentPlaceHolder1_pnbSubscriptions_i2_i3_lnkSelectAllEEMN
    click element                       ctl00_ContentPlaceHolder1_pnbSubscriptions_i2_i3_lnkSelectAllEEMN

    Scroll Element Into View            ctl00_ContentPlaceHolder1_pnbSubscriptions_i2_i4_lnkSelectAllEEQNS
    Wait until element is visible       ctl00_ContentPlaceHolder1_pnbSubscriptions_i2_i4_lnkSelectAllEEQNS
    click element                       ctl00_ContentPlaceHolder1_pnbSubscriptions_i2_i4_lnkSelectAllEEQNS

    Scroll Element Into View            ctl00_ContentPlaceHolder1_pnbSubscriptions_i1_lnkSelectAllNYC
    Wait until element is visible       ctl00_ContentPlaceHolder1_pnbSubscriptions_i1_lnkSelectAllNYC
    click element                       ctl00_ContentPlaceHolder1_pnbSubscriptions_i1_lnkSelectAllNYC

    Scroll Element Into View            ctl00_ContentPlaceHolder1_pnbSubscriptions_i2_i1_lnkSelectAllEEBX
    Wait until element is visible       ctl00_ContentPlaceHolder1_pnbSubscriptions_i2_i1_lnkSelectAllEEBX
    click element                       ctl00_ContentPlaceHolder1_pnbSubscriptions_i2_i1_lnkSelectAllEEBX

    Scroll Element Into View            ctl00_ContentPlaceHolder1_pnbSubscriptions_i2_i2_lnkSelectAllEEBKN
    Wait until element is visible       ctl00_ContentPlaceHolder1_pnbSubscriptions_i2_i2_lnkSelectAllEEBKN
    click element                       ctl00_ContentPlaceHolder1_pnbSubscriptions_i2_i2_lnkSelectAllEEBKN

    Scroll Element Into View            ctl00_ContentPlaceHolder1_pnbSubscriptions_i2_i3_lnkSelectAllEEMN
    Wait until element is visible       ctl00_ContentPlaceHolder1_pnbSubscriptions_i2_i3_lnkSelectAllEEMN
    click element                       ctl00_ContentPlaceHolder1_pnbSubscriptions_i2_i3_lnkSelectAllEEMN

    Scroll Element Into View            ctl00_ContentPlaceHolder1_pnbSubscriptions_i2_i4_lnkSelectAllEEQNS
    Wait until element is visible       ctl00_ContentPlaceHolder1_pnbSubscriptions_i2_i4_lnkSelectAllEEQNS
    click element                       ctl00_ContentPlaceHolder1_pnbSubscriptions_i2_i4_lnkSelectAllEEQNS

    Scroll Element Into View            ctl00_ContentPlaceHolder1_pnbSubscriptions_i3_i1_lnkSelectAllBUSB
    Wait until element is visible       ctl00_ContentPlaceHolder1_pnbSubscriptions_i3_i1_lnkSelectAllBUSB
    click element                       ctl00_ContentPlaceHolder1_pnbSubscriptions_i3_i1_lnkSelectAllBUSB

    Scroll Element Into View            ctl00_ContentPlaceHolder1_pnbSubscriptions_i3_i2_lnkSelectAllBUSM
    Wait until element is visible       ctl00_ContentPlaceHolder1_pnbSubscriptions_i3_i2_lnkSelectAllBUSM
    click element                       ctl00_ContentPlaceHolder1_pnbSubscriptions_i3_i2_lnkSelectAllBUSM

    Scroll Element Into View            ctl00_ContentPlaceHolder1_pnbSubscriptions_i3_i3_lnkSelectAllBUSQ
    Wait until element is visible       ctl00_ContentPlaceHolder1_pnbSubscriptions_i3_i3_lnkSelectAllBUSQ
    click element                       ctl00_ContentPlaceHolder1_pnbSubscriptions_i3_i3_lnkSelectAllBUSQ

    Scroll Element Into View            ctl00_ContentPlaceHolder1_pnbSubscriptions_i3_i4_lnkSelectAllBUSS
    Wait until element is visible       ctl00_ContentPlaceHolder1_pnbSubscriptions_i3_i4_lnkSelectAllBUSS
    click element                       ctl00_ContentPlaceHolder1_pnbSubscriptions_i3_i4_lnkSelectAllBUSS

    Scroll Element Into View            ctl00_ContentPlaceHolder1_pnbSubscriptions_i3_i5_lnkSelectAllBUSX
    Wait until element is visible       ctl00_ContentPlaceHolder1_pnbSubscriptions_i3_i5_lnkSelectAllBUSX
    click element                       ctl00_ContentPlaceHolder1_pnbSubscriptions_i3_i5_lnkSelectAllBUSX

    Scroll Element Into View            ctl00_ContentPlaceHolder1_pnbSubscriptions_i4_lnkSelectAllLIRR
    Wait until element is visible       ctl00_ContentPlaceHolder1_pnbSubscriptions_i4_lnkSelectAllLIRR
    click element                       ctl00_ContentPlaceHolder1_pnbSubscriptions_i4_lnkSelectAllLIRR

    Scroll Element Into View            ctl00_ContentPlaceHolder1_pnbSubscriptions_i5_i1_lnkSelectAllMNRHAL
    Wait until element is visible       ctl00_ContentPlaceHolder1_pnbSubscriptions_i5_i1_lnkSelectAllMNRHAL
    click element                       ctl00_ContentPlaceHolder1_pnbSubscriptions_i5_i1_lnkSelectAllMNRHAL

    Scroll Element Into View            ctl00_ContentPlaceHolder1_pnbSubscriptions_i5_i2_lnkSelectAllMNRHDL
    Wait until element is visible       ctl00_ContentPlaceHolder1_pnbSubscriptions_i5_i2_lnkSelectAllMNRHDL
    click element                       ctl00_ContentPlaceHolder1_pnbSubscriptions_i5_i2_lnkSelectAllMNRHDL

    Scroll Element Into View            ctl00_ContentPlaceHolder1_pnbSubscriptions_i5_i3_lnkSelectAllMNRNHL
    Wait until element is visible       ctl00_ContentPlaceHolder1_pnbSubscriptions_i5_i3_lnkSelectAllMNRNHL
    click element                       ctl00_ContentPlaceHolder1_pnbSubscriptions_i5_i3_lnkSelectAllMNRNHL

    Scroll Element Into View            ctl00_ContentPlaceHolder1_pnbSubscriptions_i5_i4_lnkSelectAllMNRPVL
    Wait until element is visible       ctl00_ContentPlaceHolder1_pnbSubscriptions_i5_i4_lnkSelectAllMNRPVL
    click element                       ctl00_ContentPlaceHolder1_pnbSubscriptions_i5_i4_lnkSelectAllMNRPVL

    Scroll Element Into View            ctl00_ContentPlaceHolder1_pnbSubscriptions_i5_i5_lnkSelectAllMNRPJL
    Wait until element is visible       ctl00_ContentPlaceHolder1_pnbSubscriptions_i5_i5_lnkSelectAllMNRPJL
    click element                       ctl00_ContentPlaceHolder1_pnbSubscriptions_i5_i5_lnkSelectAllMNRPJL


    Scroll Element Into View            ctl00_ContentPlaceHolder1_pnbSubscriptions_i6_lnkSelectAllBT
    Wait until element is visible       ctl00_ContentPlaceHolder1_pnbSubscriptions_i6_lnkSelectAllBT
    click element                       ctl00_ContentPlaceHolder1_pnbSubscriptions_i6_lnkSelectAllBT

    Scroll Element Into View            ctl00$ContentPlaceHolder1$rbtnPredefined
    Wait until element is visible       ctl00$ContentPlaceHolder1$rbtnPredefined
    click element                       ctl00$ContentPlaceHolder1$rbtnPredefined

    FOR  ${i}  IN  0  1  2  3  4
        Scroll Element Into View            ctl00_ContentPlaceHolder1_chkPredefinedTimes_${i}
        Wait until element is visible       ctl00_ContentPlaceHolder1_chkPredefinedTimes_${i}
        click element                       ctl00_ContentPlaceHolder1_chkPredefinedTimes_${i}
    END
    FOR ${i}  IN   0  1
        Scroll Element Into View            ctl00_ContentPlaceHolder1_chkPredefinedDays_${i}
        Wait until element is visible       ctl00_ContentPlaceHolder1_chkPredefinedDays_${i}
        click element                       ctl00_ContentPlaceHolder1_chkPredefinedDays_${i}
    END

    FOR  ${j}   IN   0  1  2
        Scroll Element Into View            ctl00_ContentPlaceHolder1_chkAdvisoriesAndAlerts_${j}
        Wait until element is visible       ctl00_ContentPlaceHolder1_chkAdvisoriesAndAlerts_${j}
        click element                       ctl00_ContentPlaceHolder1_chkAdvisoriesAndAlerts_${j}
    END



    Scroll Element Into View            ctl00_ContentPlaceHolder1_btnSave
    Wait until element is visible       ctl00_ContentPlaceHolder1_btnSave
    click element                       ctl00_ContentPlaceHolder1_btnSave
    Capture Page Screenshot             EMBED

    Wait until element is visible       ctl00_ContentPlaceHolder1_txtAuth      20

    delete all cookies



#    wait until element is visible
#      clear element text
#    Input text
#    log                                     Inserted Wireless Number Page           console=yes


*** Keywords ***

#suite setup
Open Browser to Duck Duck Go
    #Open Browser               ${BROWSER}  add_argument("--headless");add_argument("--start-maximized")
    Open Browser                https://www.duckduckgo.com     ${BROWSER}  #uncoment this for regular browser UI and comment above to disable headless
    Maximize Browser Window  #uncoment this for regular browser UI
