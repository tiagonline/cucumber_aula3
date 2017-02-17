#language: pt

@cadastro
Funcionalidade: Cadastro de usuário no Groupon

Eu, como novo usuário do Groupon
Desejo realizar o meu Cadastro
Para que eu possa ter acesso a todas as promoções

@cadastro_sucesso
Cenario: Cadastro com sucesso

    Dado que eu acesse a página de Cadastro
    Quando eu informar os campos obrigatórios
    E Clicar em cadastrar
    Entao o meu cadastro e efetuado com sucesso

