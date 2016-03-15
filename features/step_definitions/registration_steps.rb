Given(/^a user visits the signup page$/) do
  visit new_user_registration_path
end

Given(/^I fill out the user information email "([^"]*)" pass: "([^"]*)"$/) do |arg1, arg2|
  fill_in 'user[email]', :with => arg1
  fill_in 'user[password]', :with => arg2
  fill_in 'user[password_confirmation]', :with => arg2  
end

When(/^the user submits valid signup information$/) do
  click_button 'Sign up'  
end
