*** Settings ***
Documentation    This file handle all th eoperation related to login page
Resource    ../common_functionality.resource  



*** Variables ***
${USERNAME_LOCATOR}     authUser    
${PASSWORD_LOCATOR}    clearPass
${LANGUAGE_LOCATOR}    languageChoice   
${LOGIN LOCATOR}       //button[@type='submit'] 
${ERROR_LOCATOR}     //*[contains(text(),'Invalid')]    


     
*** Keywords ***
Enter Username
    [Arguments]    ${username}
    Input Text    ${USERNAME_LOCATOR}     ${username}
Enter Password
    [Arguments]    ${password}  
    Input Password    ${PASSWORD_LOCATOR}    ${password} 
Select Language
    [Arguments]    ${language}
    Select From List By Label    ${LANGUAGE_LOCATOR}     ${language}   
Click Login  
    Click Element     ${LOGIN LOCATOR}
    
Verify Error
    [Arguments]    ${invalid}
    Element Should Contain    ${ERROR_LOCATOR}     ${invalid}    