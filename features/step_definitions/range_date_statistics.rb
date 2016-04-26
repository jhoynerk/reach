Then(/^I go to the page partial statistics$/) do
  visit statistics_path
end
Then(/^You should see button "([^"]*)"$/) do |arg1|	 
    expect(page).to have_button(arg1)
end
When (/^You choose the date start "([^"]*)" and date end "([^"]*)"$/) do |arg1, arg2|
  fill_in 'date_start', :with => arg1.to_date
  fill_in 'date_end', :with => arg2.to_date
  click_button 'Search'
end
Then(/^I should see total of statistics of "([^"]*)"$/) do |email|
  user = User.create(email: email, password: 'password', admin: false)
  PotentialClient.create(name: 'test', email: 'test2@gmail.com', last_name: 'name', title: 'title', user: user)
  PotentialClient.create(name: 'test', email: 'test3@gmail.com', last_name: 'name', title: 'title', user: user)
  PotentialClient.create(name: 'test', email: 'test4@gmail.com', last_name: 'name', title: 'title', user: user)
  fill_in 'date_start', :with => (Date.today - 1.day)
  fill_in 'date_end', :with => Date.today
  click_button 'Search'
  within("#container-statistics") do
    expect(page).to have_content(user.email)
  end
end
