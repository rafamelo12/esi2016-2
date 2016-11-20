Given(/^I am on any page of the application$/) do
  visit '/'
end

When(/^I search by Animais$/) do
  @successfull_response = get 'ongs#index', user_search: "Animais"
end

Then(/^I should see ONGs that helps animais$/) do
  expect(@successfull_response.body.downcase).to have_content("animais")
end

When(/^I search by random string$/) do
  @fail_response = get '/ongs/', user_search: "random string" 
end

Then(/^I should see no matching ONGs$/) do
  expect(@fail_response.body.downcase).should_not have_content("random string")
end