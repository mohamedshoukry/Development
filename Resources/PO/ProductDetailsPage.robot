*** Settings ***
Documentation    Search Results Page Object for B.tech website
Library    Browser

*** Variables ***
${ADD_TO_CART_BUTTON}    //button[@data-slot="button"][contains(text(),"أضف للسلة")]
${VIEW_CART_BUTTON}


*** Keywords ***
Click on Add To Cart Button
     ${ADD_TO_CART_Text}    Get Elements    ${ADD_TO_CART_BUTTON}
     ##Wait For Elements State   ${ADD_TO_CART_Text}[3]     visible
     Click    ${ADD_TO_CART_Text}[3]

Click on View Cart Button
     Wait For Elements State   ${VIEW_CART_BUTTON}      visible
     Click    ${VIEW_CART_BUTTON}
