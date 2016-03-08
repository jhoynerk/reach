Given /^a user visits the signin page$/ do
  visit new_user_session_path
end

Given(/^the user has an account email "([^"]*)" and pass "([^"]*)"$/) do |arg1, arg2|
  @user = User.create(email: arg1, password: arg2, password_confirmation: arg2)
end


When /^the user submits valid signin information$/ do
  BuiltWithImporter.new.import
  fill_in 'user[email]', :with => @user.email
  fill_in 'user[password]', :with => @user.password
  click_button 'Log in'
end

Then /^they should see their dashboard page$/ do
  expect(page).to have_title("Dashboard")
end

Then /^they should see a signout link$/ do
  expect(page).to have_link('Salir', href: destroy_user_session_path)
end
