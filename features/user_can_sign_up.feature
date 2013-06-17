Feature: User signs up

Scenario: Happy path
When I go to the homepage
And I click "sign up"
And I fill in "emilie14@gmail.com" for "Email"
And I fill in "password1" for "Password"
And I fill in "password1" for "Password confirmation"
And I press "submit"
Then I should see "Welcome! You have signed up successfully."
When I press "sign out"
Then I should be able to log back in as "emilie14@gmail.com" with password "password1"

Scenario: Skipping password
When I go to the homepage
And I click "sign up"
And I fill in "emilie14@gmail.com" for "Email"
And I fill in "" for "Password"
And I press "submit"
Then I should see "Password can't be blank"

Scenario: Invalid email
When I go to the homepage
And I click "sign up"
And I fill in "emilie14.com" for "Email"
And I fill in "password1" for "Password"
And I fill in "password1" for "Password confirmation"
And I press "submit"
Then I should see "Email is invalid"