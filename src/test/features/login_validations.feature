 Feature: verify login page validations
 # UnHappy Path scenarios:
  @regression @smoke2
  Scenario Outline: Verify User can see vaidation messages for invalid credentials
    When I enter username as <email>, password as <password>
    And I click SignIn
    Then I should not be loggedIn
    And I should see validation message as <message>
    Examples:
      | email                      | password | message                    |
      |                            |          | An email address required. |
      | sdfdsf                     | sdfsdf   | Invalid email address.     |
      | testaccount@mailinator.com | sdfsdf   | Authentication failed.     |
      | testaccount@mailinator     | sdfsdf   | enter valid email address. |
