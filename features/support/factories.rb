require 'factory_girl'

FactoryGirl.define do
	factory :broadcaster do
		name 'Super broadcaster'
		email 'broadcaster@laberintoradio.net'
		password 'imthebroadcaster'
		password_confirmation 'imthebroadcaster'
	end
	factory :program do
		name 'My super program'
		start_time DateTime.now
		end_time DateTime.now + 1.hour
	end
end
