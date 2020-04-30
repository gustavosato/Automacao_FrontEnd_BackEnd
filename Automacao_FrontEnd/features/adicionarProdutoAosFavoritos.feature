#language:pt
@cenario1
Funcionalidade: Adicionar na lista de favoritos
    Para que seja possivel adicionar um produto a lista de favoritos
    Sendo um usuário
    Quero adicionar um produto a minha lista de favoritos
    @favoritos
    Cenario: Adicionar produto em favoritos
        Dado que o usuario acessa um site de compras
        Quando o usuario clicar no campo Sign in
        E digitar o email 'teste@teste.com', e senha '123456'
        E depois clicar na homepage
        E na home page, clicar no produto "Blouse"
        E clicar em adicionar na lista de favoritos
        Entao devera ver a mensagem "Added to your wishlist."
    @listaFavoritos
    Cenario: Consultar lista de favoritos
        Dado que o usuario acessa um site de compras
        Quando o usuario clicar no campo Sign in
        E digitar o email 'teste@teste.com', e senha '123456'
        E na tela do usuario, clicar em My WishLists
        Entao o usuario devera ver o produto "Blouse" na lista.