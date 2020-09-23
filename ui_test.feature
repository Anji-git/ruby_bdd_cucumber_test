Feature: Simple test webpage related stuff

  Scenario: Check the browser title
    Given I opened 'http://www.google.com'
    When I search a 'Cheese!'
    Then I should see the browser title as 'Cheese! - Google'