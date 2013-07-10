def path_to page
  case page
  when /the home\s?page/
    root_path
  when "the visits page"
    visits_path
  when "the visit page"
    @h_id = Visit.last
    visit_path(@h_id.id)
  end
end

Given(/^I am logged in$/) do
  @user = Fabricate(:user, email: "joe@example.com")
  visit new_user_session_path
  fill_in "Email", with: "joe@example.com"
  fill_in "Password", with: "password"
  click_button "submit"
  page.should have_content("Welcome back!")
end

When(/^I go to (.*)$/) do |page|
  visit path_to(page)
end

When(/^I fill in "(.*?)" with "(.*?)"$/) do |field_named, value|
  fill_in field_named, with: value
end

When(/^I select "(.*?)" from "(.*?)"$/) do |value, drop_menu|
  page.select(value, :from => drop_menu)
end

Then(/^I should see the following list:$/) do |table|
  table.raw.each_with_index do |content, row|
    page.should have_xpath("//ol/li[#{row+1}][contains(normalize-space(.), '#{content[0]}')]")
  end
end
