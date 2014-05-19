Feature: Load the homepage
	In order to browse properly
	As a user
	I want the page to display everything correctly
	
	Scenario: Load the header
		Given I am in "app\views\songs"
		And I visit the "main" page
		Then I see the linkbar
	
	Scenario: Display the text
		Given I am in "app\views\songs"
		And I visit the "main" page
		Then I see the text box