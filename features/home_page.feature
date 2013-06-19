

Feature: Viewer visits the Home Page
In order to read the page
As a viewer
I want to see the home page of my app

  Scenario: View home page
  Given I am on the home page
  Then I should see "This is the home page."

  Scenario: Find the button to the login form
  Given I am on the home page
  Then I should see "sign in" in a link

  Scenario: Find the link to the sign up form
  Given I am on the home page
  Then I should see "sign up" in a link

  Scenario: Find the button to the add a school visit form
  Given I am on the home page
  Then I should see "School" in a link

  Scenario: Find the button to the add a ranking form
  Given I am on the home page
  Then I should see "Ranking" in a link

  Scenario: Find the button to the add a contact form
  Given I am on the home page
  Then I should see "Contact" in a link

  Scenario: Find the button to the view schools form
  Given I am on the home page
  Then I should see "Schools" in a link

  Scenario: Find the button to the view rankings form
  Given I am on the home page
  Then I should see "Rankings" in a link

  Scenario: Find the button to the view notes form
  Given I am on the home page
  Then I should see "My Notes" in a link




