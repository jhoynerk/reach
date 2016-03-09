When(/^the user submits valid signin information to user "([^"]*)" and "([^"]*)"$/) do |arg1, arg2|
  b = BuiltWith.create(domain: arg1)
  visit new_user_session_path
  @user = User.create(email: arg1, password: arg2, password_confirmation: arg2)
  fill_in 'user[email]', :with => @user.email
  fill_in 'user[password]', :with => @user.password
  click_button 'Log in'
end

Then(/^I should see button "([^"]*)"$/) do |arg1|
  expect(page).to have_title("Dashboard")
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
