Quando("o usuario clicar no campo Contact Us") do
    find(:xpath, "//*[@id='contact-link']//a").click
  end
  
  E("selecionar o assunto da mensagem {string}") do |assunto|
    @assunto = assunto
    sleep 5
    find(:xpath, "//*[@id='uniform-id_contact']").click

    if @assunto == "Customer service"
      find(:xpath, "//*[@id='id_contact']//option[2]").click
    else
      find(:xpath, "//*[@id='id_contact']//option[3]").click
    end
    
  end
  
  E("depois digitar o email {string}") do |email|
    @email = email
    find(:xpath, "//*[@id='email']").set(@email)
  end
  
  E("digitar a referencia do pedido {string}") do |referenciaPedido|
    @referenciaPedido = referenciaPedido
    find(:xpath, "//*[@id='id_order']").set(@referenciaPedido)
  end
  
  E("escrever uma mensagem {string}") do |mensagem|
    @mensagem = mensagem
    find(:xpath, "//*[@id='message']").set(@mensagem)
    find(:xpath, "//*[contains(text(),'Send')]").click
  end