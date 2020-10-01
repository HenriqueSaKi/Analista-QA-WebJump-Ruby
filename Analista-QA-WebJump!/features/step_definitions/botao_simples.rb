Quando('eu clico nos botões') do
    visit '/'
    find(:xpath,'//p//button[@id="btn_one"]').click
    find(:xpath,'//p//button[@id="btn_two"]').click
    find(:xpath,'//p//button[@id="btn_link"]').click
end

Então('eu verifico se estão visíveis.') do
    page.has_no_xpath?('//p//button[@id="btn_one"]')
    page.has_no_xpath?('//p//button[@id="btn_two"]')
    page.has_no_xpath?('//p//button[@id="btn_link"]')
end