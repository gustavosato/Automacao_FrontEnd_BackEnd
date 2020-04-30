#language:pt

@compra
Funcionalidade: Realizar uma compra
    Para que seja possivel realizar uma compra
    Sendo um usuário
    Quero comprar um produto disponivel no estoque.
    
    Cenario: Fazer uma compra sem estar logado no sistema
        Dado que o usuario acessa um site de compras
        Quando o usuario clicar no produto "Blouse"
        E selecionar a quantidade "10" e o tamanho "M"
        E clicar em adicionar ao carrinho
        E clicar em finalizar compra
        E digitar o email 'teste@teste.com', e senha '123456'
        E selecionar o endereço de entrega
        E selecionar aceitar termos e condicoes
        E clicar em pagamento por transferencia bancaria
        E clicar em confirmar pedido
        Entao devera ver a mensagem "Your order on My Store is complete."