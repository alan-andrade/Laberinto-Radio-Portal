Feature: Update programs admins
	Background: Changes made by a migration

	Given A migration
	When rake db:migrate is run
	Then each program should have an admin