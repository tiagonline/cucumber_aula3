Dado(/^que eu acesse a página de Cadastro$/) do
  visit "https://goo.gl/1VxoEh"
end

Quando(/^eu informar os campos obrigatórios$/) do
  @senha = Faker::Base.numerify("inicial######")
  select("Sr.", :from => 'gender-select')
  find(:css, '#first-name-input').set(Faker::LordOfTheRings.character)
  find(:css, '#last-name-input').set(Faker::LordOfTheRings.character)
  find(:css, '#personal-identifier-input').set(Faker::CPF.numeric)
  find(:css, '#street-input').set(Faker::Address.street_name)
  find(:css, '#street-number-input').set(Faker::Base.numerify("###"))
  find(:css, '#postal-code-input').set("05433001")
  find(:css, '#city-input').set(Faker::LordOfTheRings.location)
  find(:css, '#email-input').set(Faker::Internet.email('teste'))
  find(:css, '#phone-number-input').set(Faker::Base.numerify("119#######"))
  find(:css, '#password-input').set(@senha)
  find(:css, '#password-confirmation-input').set(@senha)
end

E(/^Clicar em cadastrar$/) do
 execute_script "jQuery('#terms-checkbox').click();"
 click_button 'Cadastro'

end

Entao(/^o meu cadastro e efetuado com sucesso$/) do
expect(page).to have_selector :css, '.flush-top'
end