*** Settings ***
Documentation    Test Suite For Btech website
Library     Browser
Resource    ../Resources/common.robot

Test Setup    Begin WebTest
Test Teardown    End Webtest

*** Variables ***
${Login_URL}    https://btech.com/ar/


*** Test Cases ***
Search for Iphone 16
    [Documentation]    Search for Iphone 16
    [Tags]    TC001     Functional      Search
    Log    Starting the testcase
    Search For Product    iphone16
    Verify Search Result Is Displayed And Click on Iphone 16    ايفون 16 ،
    Click on Add To Cart Button
    ##Verify That Cart Page Is Displayed
    Sleep    3s
    



