Given(/^I am logged in the application$/) do
  post '/sessions/', session: {email: "contato@ajudandoaajudar.com.br", password: "foobar"}
end

When(/^I hit the logout button$/) do
  delete '/logout'
end

Then(/^I should be logged out and redirected to the main page$/) do
  expect('/')
end