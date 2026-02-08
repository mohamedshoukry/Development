*** Settings ***
Documentation    Search Results Page Object for B.tech website
Library    Browser

*** Variables ***
${PRODUCT_LINK}    //article//footer//h2[@class='text-xsmall line-clamp-2 max-h-[42px] w-full text-absoluteDark font-medium']

*** Keywords ***
Verify Search Result Is Displayed And Click on Iphone 16
    [Arguments]    ${SEARCH_TEXT}
##    list of search results
   ${PRODUCT_TEXT}    Get Elements    ${PRODUCT_LINK}
## 3shan a3rf 3dd l results
   ${PRODUCT_COUNT}    Get Length    ${PRODUCT_TEXT}
   FOR    ${i}    IN RANGE   0   ${PRODUCT_COUNT}
    ${PRODUCT_NAME}    Get Text    ${PRODUCT_TEXT}[${i}]
    ${STATUS}    Run Keyword And Return Status    Should Contain    ${PRODUCT_NAME}    ${SEARCH_TEXT}
        IF    ${STATUS} == True
            Click    ${PRODUCT_TEXT}[${i}]
            RETURN
        ELSE
            Continue For Loop
        END
   END

