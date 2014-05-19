Feature: Showcase the team
	In order to praise the developers
	As a very impressed user
	I want to know about the team and its members
	
	Scenario: Display the Pun description
		Given I am in "app\views\songs"
		And I visit the "about" page
		Then I see team info
		
	Scenario: Display the crew
		Given I am in "app\views\songs"
		And I visit the "about" page
		Then I see names
		
	Scenario: Display pictures
		Given I am in "app\views\songs"
		And I visit the "about" page
		Then I see pictures of the team members