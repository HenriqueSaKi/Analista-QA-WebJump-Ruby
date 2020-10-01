=begin
    Ações que deverão ser realizadas:
    - Preencher o campo "YourFirstName" com um texto qualquer
    - Clique no botão 'One'
    - Cheque 'OptionThree' 
    - Selecione a opção 'ExampleTwo' da select box
    - Verifica se o logo Selenium Webdriver está visível
=end

Quando('eu solicitar para realizar todas as funções.') do
    visit '/'
    find('#first_name').send_keys('Henrique')
    find(:xpath, '//p//button[@id="btn_one"]').click
    find(:xpath, '//input[@id="opt_three"]').click
    find(:xpath, '//select[@id="select_box"]//option[@value="option_two"]').click
    page.has_xpath?('//img[@src="http://techtutorr.com/wp-content/uploads/2014/04/selenium-webdriver-online-courses-techtutorr.jpg"]')
end