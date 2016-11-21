Feature: Search for Ongs

Scenario: User sucessfully searches for ONGs in our application
Given I am on any page of the application
When I search by Animais
Then I should see ONGs that helps animais

Scenario: User dont find any ONG
Given I am on any page of the application
When I search by random string
Then I should see no matching ONGs