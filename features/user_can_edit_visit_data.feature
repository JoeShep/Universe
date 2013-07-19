Feature: User can edit visit data
  In order to update my school visits info
  As a user
  I want to change the stuff I saved earlier

  Scenario: Changing visit date, contact name, and ranking
    Given I am logged in
    And I have the following visit:
      | school_name | Cow College |
    And that visit has the following ranking:
      | campus | 5 |
      | dorms | 6 |
    When I go to the visits page
    And I click "Cow College"
    Then I click "Edit Visit Info"
    And I fill in "Visit Date" with "08/23/2013"
    Then I click "Next"
    And I fill in "Contact Name" with "Johnny Jones"
    Then I press "Rank Stuff"
    Then I should see "Your visit to Cow College has been updated"
    When I select "8" from "Dorms"
    And I fill in "dorms_note" with "Cramped, but lots of windows"
    And I press "Save"
    Then I should see "Your rankings of Cow College have been updated"


