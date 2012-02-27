require 'factory_girl'

FactoryGirl.define do
	factory :presenter do
		name 'I am the administrator'
		email 'admin@laberintoradio.net'
		password 'imadmin'
		password_confirmation 'imadmin'
	end
	
	factory :admin, :parent => :presenter do
		admin true
	end
end
