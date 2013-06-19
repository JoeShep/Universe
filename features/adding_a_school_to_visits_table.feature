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
    And I click "add a school"
    And I fill in "School Name" with "Harvard"
    And I press "Submit"
    Then I should see "Your visit to Harvard has been added to your list"
    When I click "see all schools"
    Then I should see the following list:
      | TN School of Clogging |
      | Cow College |
      | Harvard |
