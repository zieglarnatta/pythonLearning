#!/usr/local/bin/env python3
import time
import sys
from selenium import webdriver
from selenium.webdriver.common.keys import Keys

#chrome run
print('THIS IS CHROME RUN')
driver = webdriver.Chrome()
driver.get('https://www.cafewell.com') # load the web page
time.sleep(2)
# assert the page load with title id CaféWell - health
assert 'Sign In | CaféWell' in driver.title
time.sleep(2)
print('found the Page title on: ')
print(driver.title)
time.sleep(2)

# assert elements of Register now
register_now = driver.find_element_by_link_text('Register Now')
print('found the registration button: ')
print(register_now)

# assert username or email text box exists
username_assert = driver.find_element_by_id('user_login')
print('found the username text box button: ')
print(username_assert)

# assert password exists
password_assert = driver.find_element_by_id('user_password')
print('found the password text box button: ')
print(password_assert)

# assert Remember me text and check box exists
remember_me_assert = driver.find_element_by_id('remember_me')
print('found the Remember Me text: ')
print(remember_me_assert)

# assert Forgot Password Link exists
forgot_password_assert = driver.find_element_by_link_text('Forgot password?')
print('found the Forgot Password? link: ')
print(forgot_password_assert)

# assert Log In button exists
"""login_button_assert = driver.find_element_by_id('$0')
print('found the Log In button: ')
print(login_button_assert)"""

# fill in user name
username_assert.send_keys('becausedemo1')
time.sleep(2)
# fill in pasword
password_assert.send_keys('Welltok!')
time.sleep(2)
# click on login
username_assert.send_keys(Keys.RETURN)
time.sleep(3)

# assert landing page loaded
assert 'Homepage | CaféWell' in driver.title
print('Landing page loaded with title:')
print(driver.title)

# assert user is successfully logged in with id as profile-username showing
logging_in = driver.find_element_by_id('profile-username')
print('User is logged in with profile displayed as:')
print(str(logging_in))

time.sleep(4)
driver.close() #close out the Chrome driver & window

print('''

''')
print('THIS IS FIREFOX RUN')
#Firefox run
driver = webdriver.Firefox()
driver.get('https://www.cafewell.com') # load the web page
time.sleep(2)
# assert the page load with title id CaféWell - health
assert 'Sign In | CaféWell' in driver.title
time.sleep(2)
print('found the Page title on: ')
print(driver.title)
time.sleep(2)

# assert elements of Register now
register_now = driver.find_element_by_link_text('Register Now')
print('found the registration button: ')
print(register_now)

# assert username or email text box exists
username_assert = driver.find_element_by_id('user_login')
print('found the username text box button: ')
print(username_assert)

# assert password exists
password_assert = driver.find_element_by_id('user_password')
print('found the password text box button: ')
print(password_assert)

# assert Remember me text and check box exists
remember_me_assert = driver.find_element_by_id('remember_me')
print('found the Remember Me text: ')
print(remember_me_assert)

# assert Forgot Password Link exists
forgot_password_assert = driver.find_element_by_link_text('Forgot password?')
print('found the Forgot Password? link: ')
print(forgot_password_assert)

# assert Log In button exists
"""login_button_assert = driver.find_element_by_id('$0')
print('found the Log In button: ')
print(login_button_assert)"""

# fill in user name
username_assert.send_keys('becausedemo1')
time.sleep(2)
# fill in pasword
password_assert.send_keys('Welltok!')
time.sleep(2)
# click on login
username_assert.send_keys(Keys.RETURN)
time.sleep(4)

# assert landing page loaded
assert 'Homepage | CaféWell' in driver.title
print('Landing page loaded with title:')
print(driver.title)

# assert user is successfully logged in with id as profile-username showing
logging_in = driver.find_element_by_id('profile-username')
print('User is logged in with profile displayed as:')
print(logging_in)

time.sleep(4)
driver.close() #close out the driver for FF & window

driver.quit() #quit the automation run
