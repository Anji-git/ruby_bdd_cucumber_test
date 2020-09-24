Feature: Products validation in the "www.saucedemo.com" website

  Scenario: Successful login to the Products page
    Given the user is in the 'https://www.saucedemo.com/' website
    When the user login with valid credentials
    Then the user should able to see the "Products" page
