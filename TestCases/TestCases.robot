*** Settings ***
Resource  ../Operational/instructions.robot
Resource  ../Operational/locatorVariables.robot

Test Setup  Open Flipkart URL through browser
Test Teardown  Close the browser

*** Test Cases ***
User should be able to log in and clear the contents in the cart
    Log into flipkart using phone number and password
    Clear the contents in the cart
    Move to Home Page


User should be able to add the product to the cart    
    Log into flipkart using phone number and password
    Search for specific product
    Filter with reviews for 4 star and above
    Click on the desired product
    Verify Product page Title
    Enter pincode to enable add to cart button


