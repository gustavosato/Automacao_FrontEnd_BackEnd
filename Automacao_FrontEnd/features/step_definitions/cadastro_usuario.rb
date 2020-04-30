E("digitar o email {string} no campo criar conta") do |email|
    @email = email.downcase
    find(:xpath, "(//*[@id='email_create'])").set @email 
    find(:xpath, "//*[@id='SubmitCreate']").click
  end
  
  E("selecionar o titulo {string} na tela de cadastro informacoes pessoais") do |titulo|
    @titulo = titulo
    if @titulo == "Mr."
        find(:xpath, "(//*[@class='radio-inline'])[1]//label//div//span").click
    else
        find(:xpath, "//*[@id='id_gender2']").click
    end
  end
  
  E("preencher o campo primeiro nome com {string}") do |nome|
    @nome = nome
    find(:xpath, "//*[@id='customer_firstname']").set @nome
  end
  
  E("preencher o campo sobrenome {string}") do |sobrenome|
    @sobrenome = sobrenome
    find(:xpath, "//*[@id='customer_lastname']").set @sobrenome
  end
  
  E("preencher o campo senha {string}") do |senha|
    @senha = senha
    find(:xpath, "//*[@id='passwd']").set @senha
  end
  
  E("preencher o campo endereco {string}") do |endereco|
    @endereco = endereco
    find(:xpath, "//*[@id='address1']").set @endereco
  end
  
  E("preencher o campo cidade {string}") do |cidade|
    @cidade = cidade
    find(:xpath, "//*[@id='city']").set @cidade
  end
  
  E("selecionar estado {string}") do |estado|
    @estado = estado
    find(:xpath, "(//*[contains(text(),'State')])[2]//..//div").click
    sleep 30
    if @estado == "Arizona"
        find(:xpath, "(//*[contains(text(),'State')])[2]//..//div//select//option[4]").click
    else
        find(:xpath, "(//*[contains(text(),'State')])[2]//..//div//select//option[1]").click
    end
  end

  E("preenche o campo codigo postal {string}") do |codPostal|
    @codPostal = codPostal
    find(:xpath, "//*[@id='postcode']").set @codPostal
    page.execute_script "window.scrollBy(0,300)"
    sleep 5
  end
  
  E("preenche o campo telefone {string}") do |tel|
    @tel = tel
    find(:xpath, "//*[@id='phone_mobile']").set @tel
    sleep 5
    find(:xpath, "//*[@id='submitAccount']").click
  end
  
  Entao("devera ver a mensagem {string} na pagina do usuario.") do |mensagem|
    @mensagem = mensagem
    assert_text(@mensagem)
  end