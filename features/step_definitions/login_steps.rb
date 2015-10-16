Given(/^I am on login screen$/) do
end


When(/^I enter invalid credentials$/) do
  query("* id:'username'", :setText=>"Rajdeep")
  query("* id:'password'", :setText=>"Varma")

end

Then(/^I should see error message$/) do
  expect(query("* id:'error'",:text).first).to eq 'Please enter a valid username'
end

And(/^I log\-in$/) do
  touch("* id:'login_btn'")
end