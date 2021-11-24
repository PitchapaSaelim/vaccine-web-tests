*** Settings ***
Documentation    Vaccine Web Tests
Library          SeleniumLibrary

*** Variables ***
# variable names can contain spaces
${HOME URL}    https://vaccine-haven.herokuapp.com/
${BROWSER}     chrome

*** Test Cases ***

# Test Case ID: 1
# Description: Test that the app can navigate to the home page.
Can Open to Home Page
	Open Browser to Home Page

# Test Case ID: 2
# Description: Test that the home page contains the register link to navigate to registration page.
Verify Home Page Contains Register Link
	Contain Register Link

# Test Case ID: 3
# Description: Test that the home page contains the reserve vaccine button to navigate to vaccine reservation page.
Verify Home Page Contains Reserve Vaccine Button
	Contain Reserve Vaccine Button

# Test Case ID: 4
# Description: Test that the reservation can created.
Can Created Reservation
	Navigate to Reservation Page
	Input Citizen ID                9621054642182
	Choose Site	OGYHSite
	Choose Vaccine	Pfizer
	Submit Reservation

# Test Case ID: 5
# Description: Test that the reservation created successfully.
Reservation Created Successfully
	Navigate to My Info Page
	Input Citizen ID                           9621054642182
	Submit Info
	Contain Vaccine Reservation Information

# Test Case ID: 6
# Description: Test that the reservation can canceled.
Can Canceled Reservation
	Submit Cancel

# Test Case ID: 7
# Description: Test that the reservation canceled successfully.
Reservation Canceled Successfully
	Verify Reservation Does Not Exist


*** Keywords ***
# User-defined keywords (actions & expressions)

Open Browser to Home Page
	Open Browser    ${HOME URL}    ${BROWSER}

Navigate to Reservation Page
	Click Button    Reserve Vaccine

Navigate to My Info Page
	Click Link	/info	

Input Citizen ID
	[Arguments]    ${citizen_id}
	Input Text     name:citizen_id    ${citizen_id}

Choose Site
	[Arguments]                  ${site_name}
	Select From List By Value    xpath=//*[@id="site_name"]    ${site_name}

Choose Vaccine
                              [Arguments]                      ${vaccine_name}
	Select From List By Value    xpath=//*[@id="vaccine_name"]    ${vaccine_name}

Submit Reservation
    Click Button    reserve__btn

Submit Info
	Click Button    info__btn

Submit Cancel
	Wait Until Element Is Visible	cancel__btn
	Click Button                                 cancel__btn

Contain Register Link
	Page Should Contain Link    /registration

Contain Reserve Vaccine Button
	Page Should Contain Button    Reserve Vaccine

Contain Vaccine Reservation Information
	Wait Until Element Is Visible	id:reserve_vaccine_value
	Wait Until Element Is Visible                             id:reserve_site_value
	Wait Until Element Is Visible                             id:reserve_date_value
	Wait Until Element Is Visible                             id:reserve_time_value
	Wait Until Element Is Visible                             id:reserve_queue_value
	Page Should Contain Element                               id:reserve_vaccine_value
	Page Should Contain Element                               id:reserve_site_value
	Page Should Contain Element                               id:reserve_date_value
	Page Should Contain Element                               id:reserve_time_value
	Page Should Contain Element                               id:reserve_queue_value

Verify Reservation Does Not Exist
	Wait Until Element Is Not Visible	id:reserve_vaccine_value
	Wait Until Element Is Not Visible                             id:reserve_site_value
	Wait Until Element Is Not Visible                             id:reserve_date_value
	Wait Until Element Is Not Visible                             id:reserve_time_value
	Wait Until Element Is Not Visible                             id:reserve_queue_value
	Page Should Not Contain Element                               id:reserve_vaccine_value
	Page Should Not Contain Element                               id:reserve_site_value
	Page Should Not Contain Element                               id:reserve_date_value
	Page Should Not Contain Element                               id:reserve_time_value
	Page Should Not Contain Element                               id:reserve_queue_value