When(/^the user submits valid signin information to user "([^"]*)" and "([^"]*)"$/) do |arg1, arg2|
  b = BuiltWith.create(domain: arg1)
  visit new_user_session_path
  @user = User.create(email: arg1, password: arg2, password_confirmation: arg2)
  fill_in 'user[email]', :with => @user.email
  fill_in 'user[password]', :with => @user.password
  click_button 'Log in'
end

Then(/^I should see button "([^"]*)"$/) do |arg1|
  expect(page).to have_button(arg1)
end

When(/^the user submits valid signin information to admin "([^"]*)" and "([^"]*)"$/) do |arg1, arg2|
  b = BuiltWith.create(domain: arg1)
  visit new_user_session_path
  @user = User.create(email: arg1, password: arg2, password_confirmation: arg2, admin: true)
  fill_in 'user[email]', :with => @user.email
  fill_in 'user[password]', :with => @user.password
  click_button 'Log in'
end

Given(/^I fill out the contact information name "([^"]*)" last name "([^"]*)" email "([^"]*)" titulo "([^"]*)"$/) do |arg1, arg2, arg3, arg4|
  fill_in 'potential_client[name]', :with => arg1
  fill_in 'potential_client[last_name]', :with => arg2
  fill_in 'potential_client[email]', :with => arg3
  fill_in 'potential_client[title]', :with => arg4
  click_button 'Create'
end

Given(/^the counter potential customers to "([^"]*)" should be "([^"]*)"$/) do |arg1, arg2|
  user = User.where(email: arg1).first
  expect(user.potential_clients.count).to eq(arg2.to_i)
end
Given(/^the user is not logged and write on the url "([^"]*)"$/) do |arg1|
  visit statistics_path
end
Then(/^The sistem should redirect at the home of the page for their logging$/) do
  expect(page).to have_title("Outreach")
end