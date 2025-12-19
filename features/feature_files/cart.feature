Feature: Cart

  Scenario: Add item to cart
    Given I am on the home page
    When I click on a product
    And I click add to cart
    Then I should see the value of the cart increase

  Scenario: Remove item from cart
    Given I have an item in my cart
    And I am on the cart page
    When I click delete
    Then I should see no items in the cart