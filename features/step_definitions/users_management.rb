require "authlogic/test_case" # include at the top of test_helper.rb
setup :activate_authlogic # run before tests are executed

Then /^the admin must be logged in to do so\.$/ do
	@admin	=	PresenterSession.create(:email=>'admin@hotmail.com',:password=>'imadmin')
end
