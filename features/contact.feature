Feature: Allow users to contact us
Allow users put in their information
Let the page display all features
Let information be submitted

	Scenario: Load the page
		Given I am in "app\views\songs"
		And the file "contact.html.erb" exists
		And I am on the "contact" page	
		Then I can see the message box displayed

	Scenario: Let text be placed into assigned boxes
		Given I am in "app\views\songs"
		And I am on the "contact" page	
		Then I can edit the boxes

	Scenario: Cancelling a submission
		Given I am in "app\views\songs"
		And I am on the "contact" page
		And I press cancel
		Then I will be diverted to the Home page
