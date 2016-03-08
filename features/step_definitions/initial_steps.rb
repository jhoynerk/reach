
Given(/^there is a builtWith import with domain "([^"]*)"$/) do |arg1|
  b = BuiltWith.create(domain: arg1)
end

Given(/^I go to the dashboard$/) do
  visit login_path
  @user = User.create!(email: 'ivan@softwarecriollo.com', password: 'password', password_confirmation: 'password')
  fill_in 'user[email]', :with => @user.email
  fill_in 'user[password]', :with => @user.password
  click_button 'Log in'
end

Then(/^I should see "([^"]*)"$/) do |arg1|  
  expect("softwarecriollo.com").to have_content arg1
end

Given(/^I fill out the contact information$/) do
  fill_in 'potential_client[email]', :with => 'ivan@softwarecriollo.com'
  fill_in 'potential_client[name]', :with => "ivan"
  fill_in 'potential_client[last_name]', :with => "Acosta-Rubio"
  fill_in 'potential_client[title]', :with => 'CEO'
  click_button 'Create'
end

Then(/^there with be only "([^"]*)" potential client$/) do |arg1|
  expect(PotentialClient.count).to be(arg1.to_i)  
end

=begin
Given(/^the potential clients fill form$/) do
  visit root_path
  fill_in 'potential_client[email]', :with => 'ivan2@softwarecriollo.com'
  fill_in 'potential_client[name]', :with => "ivan"
  fill_in 'potential_client[last_name]', :with => "Acosta-Rubio"
  fill_in 'potential_client[title]', :with => 'CEO'
  click_button 'Create'
end
=end



