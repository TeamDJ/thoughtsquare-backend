Feature: User Management
  In order to use ThoughtSquare
  As a user
  I want to register

  Scenario: Successful registration
	Given I am on the new user page
	When I fill in "Email" with "test@example.com"
	And I fill in "Display name" with "Test User"
	And I click on "Create"
	Then I should see "User was successfully created."
	
  Scenario: Failed registration
	Given a test user
	And I am on the new user page
	When I fill in "Email" with "test@example.com"
	And I fill in "Display name" with "Test User"
	And I click on "Create"
	Then I should see "Email has already been taken"
