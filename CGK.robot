*** Settings ***
Library           AppiumLibrary

*** Variables ***
${Device}         OVIBQKTCSK4L6LGA

*** Test Cases ***
open application
    Open Application    http://localhost:4723/wd/hub    platformName=Android    platformVersion=4.2.2    deviceName=${Device}    appPackage=com.orange.gck.orangedetente    appActivity=com.orange.orangeodp.activity.SplashActivity
    Wait Until Page Contains Element    xpath=//android.widget.TextView[@text="Portail Magik"]    timeout=30
    Click Element    xpath=//android.widget.ImageButton[@index=0]
    Wait Until Page Contains Element    xpath=//android.widget.TextView[@text="Souscriptions SMS"]    timeout=30
    Click Element    xpath=//android.widget.TextView[@text="Souscriptions SMS"]
    close Application
