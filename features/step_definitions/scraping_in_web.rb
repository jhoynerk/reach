When(/^the user sends a web site "([^"]*)" with token authentication$/) do |arg1|
  expect(ScrapingWeb.exist_token(arg1)).to eq(true)
end

When(/^the user sends a web site "([^"]*)" without token authentication$/) do |arg1|
  expect(ScrapingWeb.exist_token(arg1)).to eq(false)
end