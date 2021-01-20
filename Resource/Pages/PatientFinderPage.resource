*** Settings ***
Resource    ../common_functionality.resource



*** Variables ***
${FIN_LOCATOR}    fin
${CLICK_LOCATOR}    create_patient_btn1


*** Keywords ***

     
Switch To Fin Frame
    Select Frame    ${FIN_LOCATOR}
Add Patient
    Click Element        ${CLICK_LOCATOR}