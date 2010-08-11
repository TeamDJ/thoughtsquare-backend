Given /a test user/ do
  Given %{I am on the new user page}
  When %{I fill in "Email" with "test@example.com"}
  And %{I fill in "Display name" with "Test User"}
  And %{I click on "Create"}
end

Given /a test location/ do
  Given %{I am on the new location page}
  When %{I fill in "Title" with "Somewhere"}
	And %{I fill in "Latitude" with "1"}
	And %{I fill in "Longitude" with "1"}
  And %{I click on "Create"}
end