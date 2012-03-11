Feature:	Programs LifeCycle
	
	Background: Any logged in Broadcaster
		
	Scenario: The Broadcaster 1 creates first a program
		Given the broadcaster
		When it creates a new program
		Then it should be the admin of the program