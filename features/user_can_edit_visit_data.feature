Feature: User can edit visit data
  In order to update my school visits info
  As a user
  I want to change the stuff I saved earlier

  Scenario: Adding a school name
    Given I am logged in
      And I have the following visits:
      | school_name |
      | TN School of Clogging |
      | Cow College |
    When I go to the visits page
    And I click "Cow College"
    Then I click "Edit Visit Info"
    And I fill in "Visit Date" with "08/23/2013"
    Then I click "Next"
    And I fill in "Contact Name" with "Johnny Jones"
    Then I click "Rank Stuff"
    Then I should see "Your visit to Cow College has been updated"
    And I should see "visited on 08/23/2013"
    And I should see "Johnny Jones"
