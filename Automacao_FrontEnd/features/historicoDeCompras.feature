#language:pt

@historicoCompras
Funcionalidade: Historico de compras
    Para que seja possivel visualizar o historico de compras
    Sendo um usuário
    Quero consultar meu historico de compras
    
    Cenario: Consultar historico de compras
        Dado que o usuario acessa um site de compras
        Quando o usuario clicar no campo Sign in
        E digitar o email 'teste@teste.com', e senha '123456'
        E na pagina do usuario, clicar em historico e detalhes do pedido
        Entao devera ver a mensagem "Here are the orders you've placed"