Given /^the broadcaster "([^"]*)"$/ do |name|
	@broadcaster = FactoryGirl.create(:broadcaster,:name=>name)
end

When /^it creates a program with title "([^"]*)"$/ do |program_name|
  @program = FactoryGirl.build(:program, :name=>program_name)
  @program.broadcasters << @broadcaster
  @program.save
end

Then /^it should be the admin of "([^"]*)"$/ do |program_name|
	@program = Program.find_by_name(program_name)
	@broadcaster.admins?(@program).should == true
end

Given /^the program "([^"]*)"$/ do |program_name|
	@program = FactoryGirl.create(:program_with_owner, :name=>program_name)
	p @program.broadcasters
end

When /^it clicks the join button$/ do
	visit login_url
	fill_in "user_session_email", with: @broadcaster.email
	fill_in "user_session_password", with: @broadcaster.password
	click_button "Entrar"
	visit program_path(@program)
	click_link "Unirme"
end

Then /^it should be another program presenter of "([^"]*)"$/ do |arg1|
	p @program.broadcasters
	@program.broadcasters.should include(@broadcaster)
end


