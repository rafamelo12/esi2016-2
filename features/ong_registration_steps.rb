Given(/^I am on ONG registration page$/) do
  visit '/ongs/new'
end

When(/^I enter my information correctly$/) do
   post '/ongs', ong: {  nome: "Example",
                         email: "example@example.com",
                         password: "password",
                         password_confirmation: "password",
                         idade: 10,
                         rua: "Example",
                         bairro: "Example",
                         cidade: "Example",
                         estado: "EX",
                         cep: "00000000",
                         telefone: "0000000000" }
end

Then(/^I should register and login automatically$/) do
  expect('/ongs/:id')
end

  When(/^I dont enter my information correctly$/) do
  @my_response = post '/ongs', ong: {  nome: "",
                                       email: "ong@invalid",
                                       password: "foo",
                                       password_confirmation: "bar",
                                       rua: "",
                                       bairro: "",
                                       cidade: "",
                                       estado: "",
                                       cep: "",
                                       telefone: "" }
end

Then(/^I should see the register page again with error messages$/) do
  expect(@my_response.body).to have_content("Email is invalid")
end