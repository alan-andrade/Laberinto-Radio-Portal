require "authlogic/test_case" # include at the top of test_helper.rb
Authlogic::Session::Base.controller = Authlogic::ControllerAdapters::RailsAdapter.new(self)


Factory(:presenter)

Then /^the admin must be logged in to do so\.$/ do
	@admin	=	PresenterSession.create(:email=>'admin@hotmail.com',:password=>'imadmin')
end
