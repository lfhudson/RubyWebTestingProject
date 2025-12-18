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

  Scenario: Logout
    Given I am on the login page
    And I input valid credentials
    And Click login
    When I click logout
    Then I should be taken to the login page
