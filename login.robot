*** Settings ***
Library  Selenium2Library
Suite Setup     Open Browser    ${URL}   ${BROWSER}
Suite Teardown  Close All Browsers
 
 
*** Variables ***
${URL}              https://www.set.or.th/
${BROWSER}          Chrome
${page_title}       name=Image3
${user}             id=txtLogin
${password}         id=txtPassword
${user_input}       wanat.so.64@gmail.com
${password_input}   Ce9b0000
${logoutBt}         xpath=//a[contains(text(),'ออกจากระบบ')]


 
*** Test Cases ***
SET Login
    Wait Until Element Is Visible  ${page_title}
    Click Image  ${page_title}
    # Input username
    Wait Until Element Is Visible  ${user}
    Input Text  ${user}     ${user_input}
    # Input password
    Wait Until Element Is Visible  ${password}
    Input Text  ${password}     ${password_input}
    # Click login button
    Click Element   xpath=//input[@value='ลงชื่อเข้าใช้']
    # Click logout button
    Wait Until Element Is Visible  ${logoutBt}
    Click Element   ${logoutBt}

