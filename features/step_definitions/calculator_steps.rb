Given(/^I set First operand as "([^"]*)"$/) do |first_operand|
  query("* id:'first_operand'", :setText => "#{first_operand}")
end

And(/^I set Second operand as "([^"]*)"$/) do |second_operand|
  query("* id:'second_operand'", :setText => "#{second_operand}")
end

Then(/^I should get result as "([^"]*)"$/) do |result|
  query("* id:'result'",:text).first.should == result
end