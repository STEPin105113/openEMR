*** Settings ***
Documentation    This file handle all th eoperation related to login page
Resource    ../common_functionality.resource
*** Variables ***
${LOGCLICKTOR}     //*[@id='username']
${LOGOUTLICK}    //li[text()='Logout']
${NAME1_LOCATOR}    //div[contains(text(),'Patient/Client')]
${PATIENT_LOCATOR}            //div[contains(text(),'Patients')]

*** Keywords ***
Dashboard Page Should Contain
    [Arguments]     ${pagetext}
    Page Should Contain       ${pagetext}
MouseOver On BillySmith   
    Mouse Over    ${LOGOUT_LOCATOR}
MouseOver On Patient/client 
      
     Mouse Over     ${NAME1_LOCATOR} 
     

     
Click Logout
       Click Element      ${LOGOUTLICK}
       

 
Click patient
     Click Element     ${PATIENT_LOCATOR}  
