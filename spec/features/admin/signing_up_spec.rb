require "spec_helper"

feature 'Signig up' do
  scenario 'Successful sign up' do

    visit root_path

    click_link "Cadastrar-se"
    fill_in "E-mail",  with: 'testesteste@gmail.com'
    fill_in "Senha",  with: '123#$45678'
    fill_in "Confirme a senha",  with: '123#$45678'

    click_button "Cadastrar-se"

    expect(page).to have_content("Login efetuado com sucesso. Se não
      foi autorizado, a confirmação será enviada por e-mail.")
  end
end
