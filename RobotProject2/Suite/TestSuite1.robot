*** Settings ***
Library    SeleniumLibrary
Suite Setup       Log    I am inside Test Suite Setup
Suite Teardown    Log    I am inside Test Suite Teardown
Test Setup        Log    I am inside Test Setup
Test Teardown     Log    I am inside Test Teardown
Default Tags    Rice
*** Test Cases ***
MyFirstTest
    [Tags]    Cake
    Log    Hello World...
    
MySecondTest
    Log    Hello World...
    
MyThirdTest
    Log    Hello World...
    
# Step 1 : Goto cmd
    # CD to the location of your project folder
    # - C:\Users\Raniel\eclipse-workspace_Robot_Framework\RobotProject2
# Step 2 : Run command
    # robot -t TestName TestSuite
    # robot -t MyFirstTest Suite\TestSuite1.robot

# Step 3 : add flat to set tags
    # --settag=tagname
    # robot -t MySecondTest --settag=salt Suite\TestSuite1.robot

# Step 4 : Run tests with tags
    # --include
    # robot -i Cake Suite\TestSuite1.robot
    # robot -i R* Suite\TestSuite1.robot

# Step 5 : Run tests with excluding tags
    # --exclude
    # robot -e Rice Suite\TestSuite1.robot
    
# Web Browser
    # Open Browser                 https:google.com    chrome
    # Set Browser Implicit Wait    5
    # Input Text                   name:q    Automation step by step
    # Click Button                 name:btnK  
    # Sleep                        5  
    # Close Browser
    # Log                          Test Completed    
    
# SampleLoginTest
    # Open Browser    ${URL}    ${Browser}
    # Set Browser Implicit Wait    5
    # LoginKW    
    # Click Element                id:welcome
    # Click Element                link:Logout
    # Close Browser
    
# *** Variables ***
# ${URL}           https://opensource-demo.orangehrmlive.com/
# ${Browser}       chrome
# @{Credential}    Admin    admin123
# &{Cred}          username=Admin    password=admin123

# *** Keywords ***
# LoginKW
    # Input Text             id:txtUsername    ${Credential}[0]  
    # Input Text             id:txtPassword    ${Cred}[password]
    # Click Button           id:btnLogin
