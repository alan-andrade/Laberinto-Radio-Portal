require 'factory_girl'

FactoryGirl.define do
	factory :broadcaster do
		name 'Super broadcaster'
		sequence(:email) {|n| "broadcaster#{n}@laberintoradio.net"}
		password 'imthebroadcaster'
		password_confirmation 'imthebroadcaster'
	end

	factory :program do
		name 'My super program'
		start_time DateTime.now
		end_time DateTime.now + 1.hour		
	end

	factory :ownership do 
		association :broadcaster
		association :program
	end

	factory :broadcaster_with_program, :parent=>:broadcaster do
		after_create { |b| Factory(:ownership, :broadcaster=>b, :program=>:program) }
	end

	factory :program_with_owner, :parent=>:program do 
		after_create{|p| Factory(:ownership, :program=>p, :broadcaster=> Factory.create(:broadcaster) ) }
	end


end
