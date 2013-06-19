Given /^I am on the home page$/ do
  visit "/"
end

Then /^I should see %{([^"]*)}$/ do |text|
  page.should have_content text
end

Then(/^I should see "(.*?)" in a button$/) do |text|
  page.should have_button text
end

Then(/^I should see "(.*?)" in a link$/) do |text|
  page.should have_link text
end

Given(/^the user "(.*?)" with password "(.*?)"$/) do |email, password|
  user = User.create( email: email, password: password)
  refute user.new_record?
end

Then(/^I (?:should be able to log back in as|am logged in as)? "(.*?)" with password "(.*?)"$/) do |email, password|
  User.create( email: email, password: password) unless User.find_by_email(email)
  visit new_user_session_path
  fill_in "Email", with: email
  fill_in "Password", with: password
  click_button "submit"
  page.should have_content("Welcome back!")
end

When "I open the page" do
  save_and_open_page
end

When(/^I (?:click|press) "(.*?)"$/) do |text|
  click_link_or_button text
end

When(/^I fill in "(.*?)" for "(.*?)"$/) do |value, field_named|
  fill_in field_named, with: value
end

Then(/^I should see "(.*?)"$/) do |content|
  page.should have_content(content)
end

Then(/^I should not see "(.*?)"$/) do |content|
  page.should_not have_content(content)
end