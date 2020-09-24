require 'pry'

Given(/^the user is in the '(.*)' website$/) do |url|
  @driver.get url
end

Given(/^the user login with valid credentials$/) do
  user_name = @driver.find_element :id => 'user-name'
  user_name.send_keys 'standard_user'
  user_pwd = @driver.find_element :id => 'password'
  user_pwd.send_keys 'secret_sauce'
  login_btn = @driver.find_element :id => 'login-button'
  login_btn.click
  sleep(10)
end

When(/^the user should able to see the "(.*)" page$/) do |expected|
  prod_page = @driver.find_element :class => 'product_label'
  actual = prod_page.attribute('innerText')
  expect(actual).to eq expected
end