Given(/^I am on login screen$/) do
end


When(/^I enter invalid credentials$/) do
  query("* id:'username'", :setText=>"Rajdeep")
  query("* id:'password'", :setText=>"Varma")
  nakal_execute('login_screen')
end

Then(/^I should see error message$/) do
  expect(query("* id:'error'",:text).first).to eq 'Please enter a valid username'
  nakal_execute('login_screen_with_error')
end

And(/^I log\-in$/) do
  touch("* id:'login_btn'")
end