Feature: Location Management
  In order to allow users to save their location
  As a user
  I want to manage locations

  Scenario: Successfully create new location
    Given I am on the new location page
    When I fill in "Title" with "Somewhere"
	And I fill in "Latitude" with "1"
	And I fill in "Longitude" with "1"
	And I click on "Create"
	Then I should see "Location was successfully created."