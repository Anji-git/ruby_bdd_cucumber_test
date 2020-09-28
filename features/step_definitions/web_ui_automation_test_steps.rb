require 'pry'

Given(/^the user is in the '(.*)' website$/) do |url|
  @driver.get url
end

When(/^the user login with valid credentials$/) do
  user_name = @driver.find_element :id => 'user-name'
  user_name.send_keys 'standard_user'
  user_pwd = @driver.find_element :id => 'password'
  user_pwd.send_keys 'secret_sauce'
  login_btn = @driver.find_element :id => 'login-button'
  login_btn.click
  sleep(10)
end

Then(/^the user should able to see the "(.*)" page$/) do |expected|
  prod_page = @driver.find_element :class => 'product_label'
  expect(prod_page.attribute('innerText')).to eq expected
end

When(/^the user login with Invalid credentials$/) do
  user_name = @driver.find_element :id => 'user-name'
  user_name.send_keys 'qa_user'
  user_pwd = @driver.find_element :id => 'password'
  user_pwd.send_keys 'qa@test'
  login_btn = @driver.find_element :id => 'login-button'
  login_btn.click
end

Then(/^the user should get "(.*)"$/) do |expected|
  error_text = @driver.find_element :class => 'login-box'
  expect(error_text.attribute('innerText')).to eq expected
end
