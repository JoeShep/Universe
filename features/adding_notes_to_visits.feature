Feature: User can add notes to a visit
  In order to save my thoughts about school visits
  As a user
  I want to add notes to a school ranking and visit info

  Scenario: Adding a note to a ranking category
    Given I am logged in
      And I have the following visits:
      | school_name |
      | Harvard |
    When I go to the visit page
    Then I should see "Harvard"
    When I click "Add Rankings"
    And I select "5" from "Campus"
    And I fill in "ranking[campus_note]" with "Lots of trees and security officers."
    Then I press "Save"
    Then I should see "Your rankings have been added to your Harvard visit."
    And I should see "Campus:"
    And I should see "5"
