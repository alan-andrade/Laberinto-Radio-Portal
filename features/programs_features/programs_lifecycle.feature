Feature:	Programs LifeCycle
	
	Background: Any logged in Broadcaster
		
	Scenario: The Broadcaster 1 creates first a program
		Given the broadcaster "Steve Jobs"
		When it creates a program with title "Apple"
		Then it should be the admin of "Apple"

	Scenario: Brodcaster 2 want to join the broadcaster 1 program
		Given the broadcaster "Bill Gates"
		And the broadcaster "Steve Jobs"
		And the program "Apple"
		When it clicks the join button
		Then it should be another program presenter of "Apple"