Given /^A migration$/ do
  true
end

When /^rake db:migrate is run$/ do
  rake db:migrate
end

Then /^each program should have an admin$/ do
	
end