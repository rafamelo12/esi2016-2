Feature: Login ONG
As an ONG
I want to be able to Login into my account
So that I can see my personal information

Scenario: ONG user login into his account
Given I am on the ONG Login page
When I insert my email and password
Then I should see the my ONG page

Scenario: ONG user isnt able to login successfully
Given I am on the ONG Login page
When I insert my wrong credentials
Then I should see the Login page again