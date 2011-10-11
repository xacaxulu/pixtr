Then /^I should see a link to the "([^"]*)" gallery$/ do |title|
  page.should have_link(title)
end