Then(/^I fill out the import file selected$/) do
  attach_file('file', './data/bounced_emails.csv')
end

When(/^the admin submit file selected$/) do
  click_button 'Import Emails'
end
Then (/^I should see total of bounced emails of "([^"]*)" should be "([^"]*)"$/) do |arg1, arg2|
	user = User.where(email: arg1).ids
    expect(PotentialClient.to_user(user).email_bounced).to eq(arg2.to_i) 
end