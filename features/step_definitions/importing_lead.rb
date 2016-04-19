Then(/^I fill out the import file$/) do
  attach_file('file_csv', './data/sample_builtwith.min.csv')
end

When(/^the admin submits file$/) do
  fill_in 'date_start', :with => Date.today - 1.month
  fill_in 'date_end', :with => Date.today
  click_button 'Importar'
end

Then(/^they should see their message$/) do
  p = PotentialClient.create(name: 'test', last_name: 'capybara', email: 'test@mail.com', title: 'ceo')
  p2 = PotentialClient.create(name: 'test', last_name: 'capybara', email: 'test@mail.com', title: 'ceo')
  p3 = PotentialClient.create(name: 'test', last_name: 'capybara', email: 'test@mail.com', title: 'ceo')
  potential_clients = PotentialClient.between_date(Date.today - 1.month, Date.today).not_useless
  potential_clients == [p, p2, p3] 
  expect(potential_clients).to eq(true)
end