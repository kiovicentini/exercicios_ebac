#language: pt

Funcionalidade: Configurar compra
Como cliente da EBAC-SHOP
Quero configurar meu produto de acordo com meu tamanho e gosto
Como também escolher a quantidade
Para depois inserir no carrinho

Contexto:
Dado que eu selecionei um produto

Cenário: Adicionado com sucesso
Quando eu selecionar "Azul"
E "Tamanho GG"
E "2 peças"
Então deve exibir uma mensagem "Adicionado no carrinho"

Cenário: Limite de peças excedido
Quando eu selecionar "Azul"
E "Tamanho GG"
E "12 peças"
Então deve exibir a mensagem "Limite de peças excedido, apenas 10 peças por compra!"

Cenário: Limpar carrinho 
Quando eu selecionar "Azul"
E "Tamanho GG"
E "2 peças"
E selecionar "Limpar carrinho"
Então deve exibir as mensagem "Carrinho esvaziado!"