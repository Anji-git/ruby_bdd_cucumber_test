Feature: Products validation in the "www.saucedemo.com" website using Ruby BDD framework

  @test1
  Scenario: Successful login to the Products page
    Given the user is in the 'https://www.saucedemo.com/' website
    When the user login with valid credentials
    Then the user should able to see the "Products" page

  @test2
  Scenario: Invalid credentilas login to the Products page
    Given the user is in the 'https://www.saucedemo.com/' website
    When the user login with Invalid credentials
    Then the user should get "Epic sadface: Username and password do not match any user in this service"
