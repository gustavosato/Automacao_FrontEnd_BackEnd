Dado("que o usuario acessa um site de compras") do
    visit "http://automationpractice.com/index.php"
  end
  
  Quando("o usuario clicar no campo Sign in") do
    find(:xpath, "//*[@class='login']").click     
  end
  
  E("digitar o email {string}, e senha {string}") do |email,senha|
    @email = email.downcase
    @senha = senha.downcase
    find(:xpath, "(//*[@id='email'])").set @email 
    find(:xpath, "(//*[@id='passwd'])").set @senha
    find(:xpath, "//*[@id='SubmitLogin']").click 
  end
  
  E("depois clicar na homepage") do
    sleep 5
    find(:xpath, "(//*[@class='logo img-responsive'])").click
  end
  
  E("na home page, clicar no produto {string}") do |produto|
    @produto = produto
    find(:xpath, "(//*[contains(text(),'" + @produto + "')])[3]").click
  end

  E ("clicar em adicionar na lista de favoritos") do
    find(:xpath, "//*[@id='wishlist_button']").click
  end
  
  Entao("devera ver a mensagem {string}") do |mensagem|
    @mensagem = mensagem
    assert_text (@mensagem)
  end
  
  E("na tela do usuario, clicar em My WishLists") do
    find(:xpath, "//*[@title='My wishlists']").click
  end
  
  Entao("o usuario devera ver o produto {string} na lista.") do |produtoLista|
    @produtoLista = produtoLista
    page.execute_script "window.scrollBy(0,700)"
    sleep 5
    find(:xpath, "//*[@id='wishlist_18743']//td[5]//a").click
    sleep 5
    assert_text (@produtoLista)
  end