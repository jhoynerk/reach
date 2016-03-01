
Given(/^there is a builtWith import with domain "([^"]*)"$/) do |arg1|
  b = BuiltWith.create(domain: arg1)
end

Given(/^I go to the dashboard$/) do
  visit '/'
end

Then(/^I should see "([^"]*)"$/) do |arg1|
  expect(page).to have_content arg1
end

Given(/^I fill out the contact information$/) do
    fill_in 'potential_client[email]', :with => 'ivan@softwarecriollo.com'
    fill_in 'potential_client[name]', :with => "ivan"
    fill_in 'potential_client[last_name]', :with => "Acosta-Rubio"
    fill_in 'potential_client[title]', :with => 'CEO'
    click_button 'Create' 
end

Then(/^there with be only (\d+) potential client$/) do |arg1|
  expect(PotentialClient.count).to be(1)
end
