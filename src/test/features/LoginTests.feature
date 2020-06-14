Feature: User login for Automation Practise
  As a user
  I want to Login successfully
  So that I can access my account

  Background:
    Given I am on the homepage
    When I select SignIn link
    Then I should be on the authentication page
    And I should see SignUp panel

  @regression  @smoke
  Scenario: verify user can go to Create an Account page
    When I Enter EmailId as Sonalirshah@hotmail.com
    And I click Create An Account Button
    Then I Should be on the Registration page

  # Happy Path scenarios:
  @regression @smoke1 @login
  Scenario: Verify User can login with valid credentials
    When I enter username as testaccount@mailinator.com, password as Password1
    And I click SignIn
    Then I Should be loggedIn successfully
    And I should be on MyAccount page

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










