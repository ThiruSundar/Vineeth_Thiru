*** Settings ***
Library  SeleniumLibrary
Library  Collections
Resource  ../Operational/instructions.robot
Resource  ../Operational/locatorVariables.robot

*** Keywords ***
Open Flipkart URL through browser
    Open Browser  ${url}  ${brows}   
    Maximize Browser Window
    sleep  2s
    Verify WebPage title  ${Expected_homePage}

Log into flipkart using phone number and password1
    Input Text  xpath=//input[@type='text' and @class='_2IX_2- VJZDxU']  ${username1}
    Input Password  xpath=//input[@type='password']  ${password1}
    Click Element   xpath=//button[@type='submit' and @class='_2KpZ6l _2HKlqd _3AWRsL']
    sleep  2s

Clear the contents in the cart
    Click Element  ${home_screen_cart}
    sleep  2s
    ${present}=  Run Keyword And Return Status    Element Should Be Visible   ${cart_empty}
    Run Keyword If    '${present}'=='False'    Remove from Cart
Remove from Cart    
    Wait Until Element Is Visible  ${expeted_product}
    Click Element  ${remove_button}
    sleep  2s
    Click Element  ${confirm_remove}
Move to Home Page
    Wait Until Element Is Visible  ${home_button}
    Click Element  ${home_button}

Search for specific product
    Input Text  ${search}  DSLR
    Click Element  ${search_button}

Filter with reviews for 4 star and above
    Wait Until Element Is Visible  ${review}
    Click Element  ${review}

Click on the desired product
    #Scroll Element Into View  ${product}
    Wait Until Element Is Visible  ${product}
    Click Element  ${product}

Verify Product page Title
    Switch Window  NEW
    sleep  2s
    Verify WebPage title  ${Expected_product_title1}
    
Search for specific product2
    Input Text  ${search}  apple watch
    Click Element  ${search_button}
Click on the desired product2
    #Scroll Element Into View  ${product}
    Wait Until Element Is Visible  ${product2}
    Click Element  ${product2}
Verify Product page Title1
    Switch Window  NEW
    sleep  2s
    Verify WebPage title  ${Expected_product_title2}

Enter pincode to enable add to cart button
    Click Element  ${pincode}
    Press Keys  ${pincode}  560072
    Click Element  ${check_button_pincode}
    sleep  5s
    Click Element  ${add_to_cart}

Navigate to home screen and verify product in cart
    Click Element  ${home_button}
    sleep  2s
    Click Element  ${home_screen_cart}
    sleep  5s
    Verify if the added item is available in the cart  ${expeted_product}

Verify if the added item is available in the cart
    [Arguments]  ${camera}
    Wait Until Page Contains Element  ${camera}
    Log to Console  ${camera}
    Log to Console  Pass you can party!!


Log into flipkart using phone number and password2
    Input Text  xpath=//input[@type='text' and @class='_2IX_2- VJZDxU']  ${username2}
    Input Password  xpath=//input[@type='password']  ${password2}
    Click Element   xpath=//button[@type='submit' and @class='_2KpZ6l _2HKlqd _3AWRsL']
    sleep  2s

Verify WebPage title
    [Arguments]  ${title_name}
    Wait Until Page Contains  ${title_name}
    Log to Console  ${title_name}
    Log to Console  Pass!!

Close the browser
    sleep  5s
    Close Browser
