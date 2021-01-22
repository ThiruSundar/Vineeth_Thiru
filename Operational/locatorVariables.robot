*** Variables ***
${url} =  https://flipkart.com/
${brows} =  chrome
${Expected_homePage} =  Online Shopping Site for Mobiles, Electronics, Furniture, Grocery, Lifestyle, Books & More. Best Offers!
${home_screen_cart} =  xpath=//span[contains(text(),'Cart')]
${cart_empty} =  xpath=//div[contains(text(),'Your cart is empty!')]
${expeted_product} =  Apple Watch Series 4 GPS + Cellular 44 mm Space Grey Aluminium Case with Black Sport Band
${remove_button} =  xpath=//div[contains(@class,'_3dsJAO') and text()='Remove']
${confirm_remove} =  xpath=//div[contains(@class,'_3dsJAO _24d-qY FhkMJZ')  and text()='Remove']
${search} =  xpath=//*[@id="container"]/div/div[1]/div[1]/div[2]/div[2]/form/div/div/input
${home_button} =  xpath=//div/a/img[@class='_2xm1JU']
${search_button} =  xpath=//button[contains(@class,'L0Z3Pu')]
${review} =  xpath=//div[contains(text(),'4★ & above')]