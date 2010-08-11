Feature: Location Management
  In order to allow users to save their location
  As a user
  I want to manage locations

  Scenario: Successfully create new user-location
	Given a test user
	And a test location
    And I am on the new user_location page
    When I fill in "User" with "1"
	And I fill in "Location" with "1"
	And I click on "Create"
	Then I should see "UserLocation was successfully created."
	And I should see "Test User"
	And I should see "Somewhere"