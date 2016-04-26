Then(/^I fill out the import file selected$/) do
  attach_file('file_csv_emails', './data/bounced_emails.csv')
end

When(/^the admin submit file selected$/) do
  click_button 'Import Emails'
end
Then (/^I should see total of bounced emails of "([^"]*)" should be "([^"]*)"$/) do |arg1, arg2|
  user = User.create(email: arg1, password: 'password', admin: false)
  p = PotentialClient.create(name: 'test', last_name: 'capybara', email: 'test@mail.com', title: 'ceo', user: user, emailbounced: true)
  expect(PotentialClient.to_user(user).email_bounced.count).to eq(arg2.to_i) 
end
