require 'factory_girl'

FactoryGirl.define do
	factory :presenter do
		name 'Admin'
		email 'admin@hotmail.com'
		password 'imadmin'
		password_confirmation 'imadmin'
	end
	
	factory :admin, :parent => :presenter do
		admin true
	end
end
