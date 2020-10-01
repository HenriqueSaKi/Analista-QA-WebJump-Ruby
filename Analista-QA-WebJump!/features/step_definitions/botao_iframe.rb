Quando('eu acesso o iframe e clico nos botões') do
    visit '/'
    within_frame(:xpath, '//iframe[@src="buttons.html"]') do
        find(:xpath,'//p//button[@id="btn_one"]').click
        sleep(0.5)
        find(:xpath,'//p//button[@id="btn_two"]').click
        sleep(0.5)
        find(:xpath,'//p//button[@id="btn_link"]').click
    end
    sleep(5)
end

Então('eu verifico se estão visíveis.') do
    within_frame(:xpath, '//iframe') do
        page.has_no_button?('//p//button[@id="btn_one"]')
        page.has_no_button?('//p//button[@id="btn_two"]')
        page.has_no_button?('//p//button[@id="btn_link"]')
    end
end