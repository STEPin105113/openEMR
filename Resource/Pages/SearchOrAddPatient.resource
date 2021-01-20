*** Settings ***
Resource    ../common_functionality.resource
Resource    LoginPage.robot
Resource    DashboardPage.robot


*** Variables ***



${PAT_LOCATOR}    name=pat 
${FNAME_LOCATOR}    //input[@name='form_fname']
${MIDDLE_LOCATOR}     //input[@name='form_mname']
${LNAME_LOCATOR}   //input[@name='form_lname']
${DOB}    //input[@name='form_DOB']
${GENDER_LOCATOR}    form_sex 
${CREATE_LOCATOR}    create
${MODELFRAME_LOCATOR}    id=modalframe
${CREATENEW_LOCATOR}    //input[@value='Confirm Create New Patient']
${ALERT_LOCATOR}    //div[@class='closeDlgframe']   
${RECORD_PATIENT_LOCATOR}     //h2[text()="Medical Record Dashboard - Sneha R"]
*** Keywords ***

     

  
Switch to pat frame
    Select Frame    ${PAT_LOCATOR}
Switchout to pat frame 
      Unselect Frame  
      
Enter Firstname
     [Arguments]     ${fname}   
     Input Text    ${FNAME_LOCATOR}     ${fname}    
Enter Middlename
      [Arguments]     ${mname}   
     Input Text     ${MIDDLE_LOCATOR}     ${mname} 
Enter Lastname
     [Arguments]     ${lname}       
     Input Text    ${LNAME_LOCATOR}   ${lname} 
Enter DOB
      [Arguments]     ${dob}    
     Input Text      ${DOB}  ${dob}
Enter Gender 
     [Arguments]     ${gender}     
     Select From List By Label   ${GENDER_LOCATOR}      ${gender} 
Create
    Click Button    ${CREATE_LOCATOR}
    
Switch to model frame
    Select Frame        ${MODELFRAME_LOCATOR}
Switchout to model frame 
      Unselect Frame   
Create New Patient      
      Click Element    ${CREATENEW_LOCATOR} 

Handle Alert Message
    [Arguments]     ${alertext}  
    # Alert Should Be Present    ${alertext}     timeout=30s
    ${actualtext}     Handle Alert    
    Should Contain    ${actualtext}     ${alertext}     
Handle Happy Birthday Message
    Run Keyword And Ignore Error    Click Element    ${ALERT_LOCATOR}
    
Verify Add Patient Detail
    [Arguments]     ${patient} 
    Element Should Contain      ${RECORD_PATIENT_LOCATOR}       ${patient}  
    
            