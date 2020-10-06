Feature: Products validation in the "www.saucedemo.com" website using Ruby BDD framework

  @smoke
  Scenario Outline: Successful login to the Products page
    Given the user is in the 'https://www.saucedemo.com/' website
    When the user login with user name as <username> and password as <password>
    Then the user should able to see the "Products" page

      Examples:
        | username                | password     |
        | standard_user           | secret_sauce |
        | problem_user            | secret_sauce |
        | performance_glitch_user | secret_sauce |

  @test
  Scenario: Invalid credentilas login to the Products page
    Given the user is in the 'https://www.saucedemo.com/' website
    When the user login with Invalid credentials
    Then the user should get "Epic sadface: Sorry, this user has been locked out."
