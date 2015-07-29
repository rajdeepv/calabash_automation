Given(/^I start creating a new category$/) do
  touch("* marked:'New'")
end

When(/^I select "(.*?)"$/) do |type|
  touch("* marked:'#{type}'")
end

And(/^I note down "([^"]*)"$/) do |note|
  sleep 1
  query("com.flufflydelusions.app.enotesclassic.NoteEdit$LinedEditText", :setText=>note)
end

And(/^I save my note$/) do
  touch("* marked:'Done'")
end

Then(/^I should see "([^"]*)" as one of my note$/) do |note|
  expect(element_exists("* marked:'#{note}'")).to be true
end