Then(/^I should see link "([^"]*)"$/) do |arg1|
  find_link(arg1).visible?
end

When(/^the button "([^"]*)" is pressed$/) do |arg1|
  click_link(arg1)
end
