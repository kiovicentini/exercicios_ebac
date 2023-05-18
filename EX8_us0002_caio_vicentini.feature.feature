#language: pt

Funcionalidade: Login na plataforma
Como cliente da EBAC-SHOP
Quero fazer o login (autenticação) na plataforma
Para visualizar meus pedidos

Contexto: 
Dado que eu acesse a página de autenticação da EBAC-SHOP

Cenário: Autenticação válida 
Quando eu digitar o usuário "caio@ebac.com.br"
E a senha "password@123"
Então deve exibir uma mensagem de boas vindas "Login reconhecido, transferindo para a página de checkout"

Cenário: Usuário ou senha inválidos
Quando eu digitar o usuário "carlos@ebac.com.br"
E a senha "password@123"
Então deve exibir uma mensagem "Usuário ou senha inválidos"

Cenário: Usuário ou senha inválidos
Quando eu digitar o usuário "caio@ebac.com.br"
E a senha "password@12345"
Então deve exibir uma mensagem "Usuário ou senha inválidos"