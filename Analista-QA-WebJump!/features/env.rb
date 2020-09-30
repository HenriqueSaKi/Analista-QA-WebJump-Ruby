#Importando bibliotecas necessárias para o projeto funcionar.
require 'capybara/cucumber'
require 'selenium-webdriver'


#Configurando o Capybara para a aplicação realizada.
Capybara.configure do |config| 
    config.default_driver = :selenium_chrome #Determinando o chromedriver como driver padrão
    config.app_host = 'https://wejump-automation-test.github.io/qa-test/' #Escolhendo o site a ser acessado
    config.default_max_wait_time = 10 #Tempo de espera, antes de gerar um TimeOut
end
