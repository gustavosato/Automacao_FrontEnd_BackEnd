#language:pt
@enviarMensagem
Funcionalidade: Enviar uma mensagem 
    Para que seja possivel enviar uma mensagem a empresa 
    Sendo um usuário
    Quero enviar uma mensagem de duvida, sugestao ou reclamacao
    
    Cenario: Enviar uma mensagem de duvida, sugestao ou reclamacao
        Dado que o usuario acessa um site de compras
        Quando o usuario clicar no campo Contact Us
        E selecionar o assunto da mensagem "Customer service"
        E depois digitar o email "teste@teste.com"
        E digitar a referencia do pedido "1"
        E escrever uma mensagem "teste"
        Entao devera ver a mensagem "Your message has been successfully sent to our team."