*** Settings ***
  
Documentation    This file test the valid credential detail
Library    DataDriver    file=../TestData/openEMR.xlsx    sheet_name=Verify_Invalid_Credentials_Temp   
Resource     ../Resource/common_functionality.resource   
Resource    ../Resource/Pages/LoginPage.robot 
Suite Setup   Launch Browser
Suite Teardown    End Browser
Test Template    Verify_Invalid_Credentials_Temp    
*** Test Cases ***
TC11    

*** Keywords ***
Verify_Invalid_Credentials_Temp_${username}     
    [Arguments]    ${username}    ${password}    ${language}    ${expectedvalue}     
    
    Enter Username    ${username}   
    Enter Password     ${password}
    Select Language    ${language}  
    Click Login   
    Verify Error     ${expectedvalue}  
    
     
