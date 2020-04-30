Quando("na pagina do usuario, clicar em historico e detalhes do pedido") do
    find(:xpath, "//*[contains(text(),'Order history and details')]").click
    sleep 6
    page.execute_script "window.scrollBy(0,300)"
  end