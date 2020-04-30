Quando("o usuario clicar no produto {string}") do |produto|
    @produto = produto
    find(:xpath, "(//*[contains(text(),'" + @produto + "')])[2]").click
  end
  
  E("selecionar a quantidade {string} e o tamanho {string}") do |quant, tam|
    @quant = quant
    @tam = tam.upcase

    find(:xpath, "//*[@id='quantity_wanted']").set(@quant)
    find(:xpath, "//*[@class='selector']").click

    if @tam == "S"
        find(:xpath, "//*[@class='selector hover focus']//select//option[1]").click
    elsif @tam == "M"
        find(:xpath, "//*[@class='selector hover focus']//select//option[2]").click 
    else 
        find(:xpath, "//*[@class='selector hover focus']//select//option[3]").click  
    end
    
  end
  
  E("clicar em adicionar ao carrinho") do
    find(:xpath, "//*[contains(text(),'Add to cart')]").click
    sleep 5
    find(:xpath, "//*[contains(text(),'Proceed to checkout')]").click
  end
  
  E("clicar em finalizar compra") do
    page.execute_script "window.scrollBy(0,500)"
    sleep 5
    find(:xpath, "(//*[contains(text(),'Proceed to checkout')])[2]").click
  end
  
  E("selecionar o endereço de entrega") do
    sleep 5
    find(:xpath, "(//*[contains(text(),'Proceed to checkout')])[2]").click
  end
  
  E("selecionar aceitar termos e condicoes") do
    page.execute_script "window.scrollBy(0,400)"
    find(:xpath, "//*[@id='uniform-cgv']").click
    sleep 5
    find(:xpath, "(//*[contains(text(),'Proceed to checkout')])[2]").click
  end
  
  E("clicar em pagamento por transferencia bancaria") do
    page.execute_script "window.scrollBy(0,500)"
    sleep 5
    find(:xpath, "//*[contains(text(),'Pay by bank wire')]").click
  end
  
  E("clicar em confirmar pedido") do
    page.execute_script "window.scrollBy(0,300)"
    sleep 5
    find(:xpath, "//*[contains(text(),'I confirm my order')]").click
  end