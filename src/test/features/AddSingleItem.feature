Feature: adding an item to the basket

  Scenario: Verify that user can add single item to the shopping basket
    Given I am on the homepage
    When I search for an item
    And I select an item form the search results
    And I select add to basket
    Then I should see the item added to the basket