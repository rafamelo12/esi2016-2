Feature: ONG Logout
As an ONG I want to be able to logout from the application

Scenario: ONG successfully log out
Given I am logged in the application
When I hit the logout button
Then I should be logged out and redirected to the main page