#language:pt

@cadastroUsuario
Funcionalidade: Cadastrar usuario
    Para que seja possivel realizar o cadastro de um novo usuario
    Sendo um novo usuário
    Quero me cadastrar no site para fazer compras
    
    Cenario: Cadastro de um novo usuario
        Dado que o usuario acessa um site de compras
        Quando o usuario clicar no campo Sign in
        E digitar o email "juaancc@teste.com" no campo criar conta
        E selecionar o titulo "Mr." na tela de cadastro informacoes pessoais
        E preencher o campo primeiro nome com "Juan"
        E preencher o campo sobrenome "Cortez"
        E preencher o campo senha "1234567"
        E preencher o campo endereco "Av.teste, 2837"
        E preencher o campo cidade "Sao Paulo"
        E selecionar estado "Arizona"
        E preenche o campo codigo postal "00765"
        E preenche o campo telefone "988888888"
        Entao devera ver a mensagem "MY ACCOUNT" na pagina do usuario.