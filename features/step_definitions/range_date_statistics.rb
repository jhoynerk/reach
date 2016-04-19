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
Then(/^I should see total of statistics of "([^"]*)"$/) do |text|
 	expect(page).to have_current_path(statistics_path)
end