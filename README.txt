FrontEnd
. Durante o desenvolvimento dos scrips de teste, foram utilizados a linguagem Ruby, cucumber, capybara e seleniumWebdriver.
. Os cenários escolhidos para a automação foram: cadastrar um usuário, realizar uma compra, adicionar na lista de favoritos, verificar a lista de favoritos,
enviar uma duvida/sugestão e verificar o historico de compras.
. Para executar os testes, basta abrir o terminal de comando, entrar na pasta do projeto e digitar:
	 cucumber (para executar todos os cenários de teste)
	 cucumber --tags @tag do cenário que deseja executar (a tag é encontrada acima do cenário de teste, em sua feature)

BackEnd
. Durante o desenvolvimento foi utilizado a linguagem Ruby, Rspec, HTTParty
. O testes foram baseados no metodo get, onde ao se passar um cep válido, terá um retorno sobre localidade daquele cep
. Para executar os testes, basta abrir o terminal de comando, entrar na pasta do projeto e digitar:
	rspec -fd