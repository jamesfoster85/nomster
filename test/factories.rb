FactoryGirl.define do
	factory :place do
		name "The White House"
		description "You are standing in an open field..."
		address "1600 Pennsylvania Ave NW, Washington, DC"
		association :user
	end

	factory :comment do
		message "Sweet!"
		rating "5_stars"
		association :user
		association :place
	end

	factory :user do
		sequence :email do |n|
			"test#{n}@example.com"
		end
		password "supersecure"
		password_confirmation "supersecure"
	end
end