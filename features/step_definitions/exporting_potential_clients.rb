Then(/^I should see link "([^"]*)"$/) do |arg1|
  find_link(arg1).visible?
end

When(/^the button "([^"]*)" is pressed$/) do |arg1|
  click_link(arg1)
end

Then(/^you should see the string with information$/) do
  DatabaseCleaner.clean_with(:truncation)
  PotentialClient.create(name: 'test', email: 'test@gmail.com', last_name: 'name', title: 'title')
  potential_clients = PotentialClient.all
  response = CsvCreator.new.generate(potential_clients, ["id", "name", "email", "last_name", "title"])
  expect(response).to eq("id,name,email,last_name,title\n1,test,test@gmail.com,name,title\n")
end
