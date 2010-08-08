Given /a test user/ do
  Given %{I am on the new user page}
  When %{I fill in "Email" with "test@example.com"}
  And %{I fill in "Display name" with "Test User"}
  And %{I click on "Create"}
  Then %{I should see "User was successfully created."}
end