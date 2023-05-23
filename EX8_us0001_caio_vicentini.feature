#language: pt

Funcionalidade: Configurar compra
Como cliente da EBAC-SHOP
Quero configurar meu produto de acordo com meu tamanho e gosto
Como também escolher a quantidade
Para depois inserir no carrinho

Contexto:
Dado que os seguintes dados existem: 
|cor|tamanho|quantidade|
|azul|GG|2|
|azul|GG|12|

Esquema do Cenário: Adicionado com sucesso

Quando eu selecionar <cor>
E <tamanho>
E <quantidade>
Então deve exibir uma mensagem "Adicionado no carrinho"

Esquema do Cenário: Limite de peças excedido

Quando eu selecionar <cor>
E <tamanho>
E <quantidade>
Então deve exibir a <mensagem> "Limite de peças excedido, apenas 10 peças por compra!"

Esquema do Cenário: Limpar carrinho 

Quando eu selecionar <cor>
E <tamanho>
E <quantidade>
E selecionar "Limpar carrinho"
Então deve exibir as mensagem "Carrinho esvaziado!"