*** Settings ***
Resource    ../Resource/common_functionality.resource
Resource    ../Resource/Pages/DashboardPage.robot
Resource    ../Resource/Pages/LoginPage.robot
Resource    ../Resource/Pages/PatientFinderPage.resource
Resource    ../Resource/Pages/SearchOrAddPatient.resource
Test Setup    Launch Browser
Test Teardown    End Browser

*** Test Cases ***
Valid_Add_Patient
    
    Enter Username     admin   
    Enter Password     pass
    Select Language     English (Indian) 
    Click Login 
    Dashboard Page Should Contain    Flow Board
    MouseOver On Patient/client
    Click patient  
      
     #PatientfinderPage
     Switch To Fin Frame    
     Add Patient
     Unselect Frame
    #SearchOrAddPatientPage
     Sleep    5s            
     Switch to pat frame    
     Enter Firstname    Sneha
     Enter Middlename    Suthi 
     Enter Lastname    R 
     Enter DOB     2021-01-20  
     Enter Gender    Female 
     Create 
     Switchout to pat frame
     
     Switch to model frame
     Sleep    3s       
     Create New Patient
     Switchout to model frame 
     
    
     Handle Alert Message    New Due Clinical Reminders
     Handle Happy Birthday Message
     Switch to pat frame
     Verify Add Patient Detail    Medical Record Dashboard - Sneha R    
     Switchout to pat frame 
     MouseOver On BillySmith
     Click Logout
     