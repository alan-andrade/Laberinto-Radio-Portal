Given /^the broadcaster$/ do
  @broadcaster = FactoryGirl.create(:broadcaster)
end

When /^it creates a new program$/ do
  @program = FactoryGirl.build(:program)
  @program.broadcasters << @broadcaster
  @program.save
end

Then /^it should be the admin of the program$/ do
	@broadcaster.admins?(@program).should == true
end
