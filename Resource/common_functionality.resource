*** Settings ***

Documentation    This file contains browser activity keywords
...    and screenshot directory
  
Library    SeleniumLibrary    screenshot_root_directory=screenshot           
Library    OperatingSystem  
*** Variables ***
${BROWSER_NAME}    chrome    
${url}    https://demo.openemr.io/b/openemr/interface/login/login.php?si 

*** Keywords ***
Launch Browser
    Append To Environment Variable    path    ${EXECDIR}${/}driver
    Open Browser        browser= ${BROWSER_NAME} 
    Maximize Browser Window
    Set Selenium Implicit Wait    30s
    Go To    url=${url}
    
End Browser 
    Capture Page Screenshot    
    Close Browser    