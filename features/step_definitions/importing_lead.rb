Then(/^I fill out the import file$/) do
  attach_file('file', './data/sample_builtwith.min.csv')
end

When(/^the admin submits file$/) do
  click_button 'Importar'
end

Then(/^they should see their message "([^"]*)"$/) do |arg1|
  find(:css, '.card-panel').text    
end
