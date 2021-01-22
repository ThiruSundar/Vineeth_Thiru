*** Settings ***
Resource  ../Operational/instructions.robot
Resource  ../Operational/locatorVariables.robot
*** Test Cases ***
User should be able to Log into Flipkart Website
    Open Flipkart URL
    Log into flipkart using phone number and password
Ckeck and remove the product from the cart if present
    Clear the contents in the cart
    Move to Home Page
Search for specific product in search bar and filter
    Search for specific product
    Filter with reviews for 4 star and above
