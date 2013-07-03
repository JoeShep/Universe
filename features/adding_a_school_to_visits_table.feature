Feature: User can save a visit
  In order to save my school visits
  As a user
  I want to add a school name and visit info

  Scenario: Adding a school name
    Given I am logged in
      And I have the following visits:
      | school_name |
      | TN School of Clogging |
      | Cow College |
    When I go to the visits page
    And I click "Add a School"
    And I fill in "School Name" with "Harvard"
    And I press "Save"
    Then I should see "Your visit to Harvard has been added to your list"
    When I click "Schools"
    Then I should see the following list:
      | TN School of Clogging |
      | Cow College |
      | Harvard |

  Scenario: Adding rankings
    Given I am logged in
      And I have the following visits:
      | school_name |
      | Harvard |
    When I go to the visit page
    Then I should see "Harvard"
    When I click "Add Rankings"
    And I select "5" from "Campus"
    And I press "Save"
    Then I should see "Your rankings have been added to your Harvard visit."
    And I should see "Campus:"
