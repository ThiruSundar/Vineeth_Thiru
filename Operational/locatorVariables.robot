*** Variables ***
${url} =  https://flipkart.com/
${brows} =  chrome
#firefox  chrome
${username1} =  8861260610
${password1} =  vineethvishal@909
${username2} =  9500158051
${password2} =  royalenfield
${Expected_homePage} =  Online Shopping Site for Mobiles, Electronics, Furniture, Grocery, Lifestyle, Books & More. Best Offers!
${home_screen_cart} =  xpath=//span[contains(text(),'Cart')]
${cart_empty} =  xpath=//div[contains(text(),'Your cart is empty!')]
${expeted_product} =  xpath=//button/span[contains(text(),'Place Order')]
${remove_button} =  xpath=//div[contains(@class,'_3dsJAO') and text()='Remove']
${confirm_remove} =  xpath=//div[contains(@class,'_3dsJAO _24d-qY FhkMJZ')  and text()='Remove']
${search} =  xpath=//div/input[@title='Search for products, brands and more']
${home_button} =  xpath=//div/a/img[@class='_2xm1JU']
${search_button} =  xpath=//button[contains(@class,'L0Z3Pu')]
${review} =  xpath=//div[contains(@class,'_3879cV') and text()='4★ & above']
${product} =  xpath=//div[contains(@class,'_4rR01T') and text()='Canon EOS 200D II DSLR Camera EF-S 18 - 55 mm IS STM and 55 - 250 mm IS STM']
${Expected_product_title1} =  Canon EOS 200D II DSLR Camera EF-S 18 - 55 mm IS STM and 55 - 250 mm IS STM
${pincode} =  xpath=//input[@id='pincodeInputId']
${check_button_pincode} =  xpath=//div/span[contains(@class,'_2P_LDn') and text()='Check']
${add_to_cart} =  xpath=//button[@class='_2KpZ6l _2U9uOA _3v1-ww']
${Account} =  xpath=//div[contains(@class,'exehdJ') and text()='${name} ']
${name} =  Vineeth 
${product2} =  xpath=//div[contains(@class,'_4rR01T') and text()='Apple Watch Series 3 GPS - 42 mm Space Grey Aluminium Case with Black Sport Band']
${Expected_product_title2} =  Apple Watch Series 3 GPS - 42 mm Space Grey Aluminium Case with Black Sport Band
