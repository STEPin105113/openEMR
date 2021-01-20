*** Settings ***
  
Documentation    This file test the valid credential detail  
Resource    ../Resource/Pages/DashboardPage.robot        
Resource    ../Resource/common_functionality.resource      
Resource    ../Resource/Pages/LoginPage.robot
Test Setup    Launch Browser
Test Teardown    End Browser
Test Template     Verify_Valid_Credentials_Temp 

*** Test Cases ***
TC1    admin    pass     English (Indian)    Flow Board
TC2    physician        physician    English (Indian)     Flow Board
      


*** Keywords ***
Verify_Valid_Credentials_Temp
    [Arguments]    ${username}    ${password}    ${language}    ${expectedvalue}      
    
    Enter Username    ${username}    
    Enter Password     ${password}
    Select Language     ${language}
    Click Login 
    Dashboard Page Should Contain    ${expectedvalue} 
    MouseOver On Name   
    Click Logout      
    
