*** Settings ***
Resource  resource.robot
Suite Setup  Open And Configure Browser
Suite Teardown  Close Browser

*** Test Cases ***
When a value of 7 is set the value should be 7
	Go To  ${HOME_URL}
	Input Text  luku  7
	Click Button  aseta
	Page Should Contain  nappia painettu 7 kertaa
