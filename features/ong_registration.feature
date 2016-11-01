Feature: ONG Registration
As an User
I want to be able to register my own ONG
So that I can be a part of this AWESOME platform!

Scenario: User completes successfully the registration
Given I am on ONG registration page
When I enter my information correctly
Then I should register and login automatically

Scenario: User doesnt completes the registration
Given I am on ONG registration page
When I dont enter my information correctly
Then I should see the register page again with error messages