
Feature: Users can log in and log out
In order to save my school visits
As a user
I want to log in

  Scenario: Happy Path
    Given the user "emilie14@gmail.com" with password "password1"
    When I go to the homepage
    And I press "sign in"
    And I fill in "emilie14@gmail.com" for "Email"
    And I fill in "password1" for "Password"
    And I press "submit"
    Then I should see "Welcome back!"
    And I should not see "Log In"

  Scenario: Wrong Password
    Given the user "emilie14@gmail.com" with password "password1"
    When I go to the homepage
    And I click "sign in"
    And I fill in "emilie14@gmail.com" for "Email"
    And I fill in "wrong password" for "Password"
    And I press "submit"
    Then I should see "Your username or password is incorrect. Please try again."

  Scenario: Wrong Username
    Given the user "emilie14@gmail.com" with password "password1"
    When I go to the homepage
    And I press "sign in"
    And I fill in "emilie@gmail.com" for "Email"
    And I fill in "password1" for "Password"
    And I press "submit"
    Then I should see "Your username or password is incorrect. Please try again."
