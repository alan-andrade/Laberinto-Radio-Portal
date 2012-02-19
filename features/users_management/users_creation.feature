Feature:	User Management
	
	Background: Every presenter must be created by the admin
		And the admin must be logged in to do so.
		
	Scenario: The admin creates a new presenter
		Given the logged in admin
		When it creates a new presenter
		Then the new presenter must receive and email with his password
		
