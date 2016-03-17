Then(/^I should see link "([^"]*)"$/) do |arg1|
  find_link(arg1).visible?
end

When(/^the button "([^"]*)" is pressed$/) do |arg1|
  click_link(arg1)
end

Then(/^you should see the string with information$/) do
  PotentialClient.create(name: 'test', email: 'test@gmail.com', last_name: 'name', title: 'title')
  steps %Q{
    Then exported CSV should be
    """
    id,name,email,last_name,title,company
    1,test,test@gmail.com,name,title,

    """

  }
end


Given(/^there is a BuiltWith with company name "([^"]*)"$/) do |arg1|
  @builtWith = BuiltWith.create(:company => arg1)
end

Given(/^there is a Potential client with name "([^"]*)", email "([^"]*)" lastname "([^"]*)" and title "([^"]*)"$/) do |arg1, arg2, arg3, arg4|
  @builtWith.potential_clients.create(name: arg1, email: arg2, last_name: arg3, title: arg4)
end

Given(/^I log in to the app as an admin$/) do
   steps %Q{
    When the user submits valid signin information to admin "admin@example.com" and "password"
   }
end


Then(/^exported CSV should be$/) do |string|
  potential_clients = PotentialClient.all.includes(:built_with)
  response = CSVExportPotentialClients.export(potential_clients)
  expect(response).to eq(string)
end
