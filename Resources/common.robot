*** Settings ***
Documentation    Common resources and keywords for B.tech automation tests
Library     Browser
Resource    ../Resources/PO/HomePage.robot
Resource    ../Resources/PO/SearchResults.robot
Resource    ../Resources/PO/ProductDetailsPage.robot
Resource    ..//Resources/PO/CartPage.robot

*** Variables ***
${Login_URL}    https://btech.com/en

*** Keywords ***
Begin WebTest
    New Browser     chromium    headless=false
    Set Browser Timeout    30
    New Page        ${Login_URL}
    Sleep    3s

End Webtest
    Close Browser

