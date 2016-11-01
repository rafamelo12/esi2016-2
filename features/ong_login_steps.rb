Given(/^I am on the ONG Login page$/) do
  visit '/sessions/new'
end

When(/^I insert my email and password$/) do
  post '/sessions/', session: {email: "contato@ajudandoaajudar.com.br", password: "foobar"}
end

Then(/^I should see the my ONG page$/) do
  expect('/ongs/:id')
end

When(/^I insert my wrong credentials$/) do
  post '/sessions/', session: {email: "a@a,com", password: "123"}
end

Then(/^I should see the Login page again$/) do
  expect('/sessions/new')
end
