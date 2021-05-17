@contactUs
Feature: Automation Practice contact us feature

  Background:
    Given I am on the homepage
    When I select contact us
    Then I should be on contact us page

  #happypath
  @contactUs1
  Scenario Outline: Verify contact us page
    When I provide subject heading <subject heading>, email address<email address>, order reference <order reference> and message<message>
    And I selects send button
    Then I should see confirmation message<confirmation message>
    Examples:
      | subject heading  | email address       | order reference | message | confirmation message                                 |
      | Customer service | hdgbbhgre@gmail.com | AP1021          | Hi      | Your message has been successfully sent to our team. |

  #unhappy path
  @contactUs2
  Scenario Outline: Verify contact us page with invalid email
    When I provide subject heading <subject heading>, invalid email address<email address>, order reference <order reference> and message<message>
    And I selects send button
    Then I should see error message<confirmation message>
    Examples:
      | subject heading  | email address | order reference | message | confirmation message   |
      | Customer service | hdgbbhgre     | AP1021          | Hi      | Invalid email address. |
