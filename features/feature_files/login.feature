Feature: Login

  Scenario: Login with valid credentials
    Given I am on the login page
    When I input valid credentials
    And Click login
    Then I should be taken to the homepage

  Scenario: Login with invalid credentials
    Given I am on the login page
    When I input invalid credentials
    And Click login
    Then I should see an error message