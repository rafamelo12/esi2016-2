Given(/^I am on the ONG Login page$/) do
  visit '/ongs/sign_in'
end

When(/^I insert my correct credentials$/) do
  post '/ongs/sign_in', session: {email: "a@a.com", password: "123456"}
end

Then(/^I should see the my ONG page$/) do
  expect('/ongs/:id')
end

When(/^I insert my wrong credentials$/) do
  post '/ongs/sign_in', session: {email: "a@a,com", password: "123"}
end

Then(/^I should see the Login page again$/) do
  expect('/ongs/sign_in')
end
