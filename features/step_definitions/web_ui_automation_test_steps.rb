require 'pry'

Given(/^the user is in the '(.*)' website$/) do |url|
  @page.openSite (url)
end

When(/^the user login with user name as (.*) and password as (.*)$/) do |uname, pwd |
  @page.login_data(uname, pwd)
end

Then(/^the user should able to see the "(.*)" page$/) do |expected|
  @page.wait_for_page_load
  prod_page = @page.findElementBy("class", "product_label")
  expect(prod_page.attribute('innerText')).to eq expected
end

When(/^the user login with Invalid credentials$/) do
  @page.login_data('locked_out_user', 'secret_sauce')
end

Then(/^the user should get "(.*)"$/) do |expected|
  error_text = @page.findElementBy("class", "login-box")
  expect(error_text.attribute('innerText')).to eq expected
end


