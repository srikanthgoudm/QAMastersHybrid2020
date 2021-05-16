@smoke
Feature: Automation Practice Search feature

  Background:
    Given I am on the homepage

  #happypath
  @smoke1
  Scenario Outline: Verify I can search for items
    When I enter an item in search box<product name>
    And I select search button
    Then I should navigate to dresses page
    Examples:
      | product name |
      | dresses      |

  #unhappy path
  @smoke2
  Scenario Outline: Verify I can search invalid items
    When I enter an invalid item in search box <product name>
    And I select search button
    Then I should should see error message <error>
    Examples:
      | product name | error                                           |
      | jackets      | No results were found for your search "jackets" |
      | jeans        | No results were found for your search "jeans"   |
      | blazer       | No results were found for your search "blazer"  |






