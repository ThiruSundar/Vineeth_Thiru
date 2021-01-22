*** Settings ***
Library  SeleniumLibrary
Library  Collections
Resource  ../Operational/instructions.robot
Resource  ../Operational/locatorVariables.robot
*** Keywords ***
Open Flipkart URL
    Open Browser  ${url}  ${brows}   
    Maximize Browser Window
    sleep  2s
    Title Should Be  ${Expected_homePage}
Log into flipkart using phone number and password
    Input Text  xpath=//input[@type='text' and @class='_2IX_2- VJZDxU']  9500158051
    Sleep   2s
    Input Password  xpath=//input[@type='password']  royalenfield
    Sleep   2s
    Click Element   xpath=//button[@type='submit' and @class='_2KpZ6l _2HKlqd _3AWRsL']
    Log to Console  Sub category found
    Sleep   2s
    Capture Page Screenshot
Clear the contents in the cart
    sleep  2s
    Click Element  ${home_screen_cart}
    sleep  2s
    ${present}=  Run Keyword And Return Status    Element Should Be Visible   ${cart_empty}
    Run Keyword If    '${present}'=='False'    Remove from Cart
Remove from Cart    
    Wait Until Page Contains  ${expeted_product}
    Click Element  ${remove_button}
    sleep  2s
    Click Element  ${confirm_remove}

Move to Home Page
    sleep  2s
    Click Element  ${home_button}

Search for specific product
    Input Text  ${search}  DSLR
    Click Element  ${search_button}

Filter with reviews for 4 star and above
    Click Element  ${review}

