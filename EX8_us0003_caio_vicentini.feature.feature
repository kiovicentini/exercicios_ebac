#language: pt

Funcionalidade: Concluir cadastro
Como cliente da EBAC-SHOP
Quero concluir meu cadastro
Para finalizar minha compra

Contexto: 
Dado que eu estou na página de preenchimento de cadastro

Esquema do Cenário: Autenticar múltiplos cadastros

Quando eu digitar o <email>
E o <Nome> 
E a <senha>
Então deve exibir a <mensagem> de sucesso

Exemplos: 
|nomeusuario|email|senha|mensagem|
|caiov|caio@ebac.com.br|senha@123|"Olá caiov, cadastro concluiído! Redirecionando para o carrinho"|
|joaov|joao@ebac.com.br|senha@123|"Olá joaov, cadastro concluiído! Redirecionando para o carrinho"|
|helenav|helena@ebac.com.br|senha@123|"Olá helenav, cadastro concluiído! Redirecionando para o carrinho"|

Esquema do Cenário: Cadastro inválido

Quando eu digitar o <email>
E o <Nome> 
E a <senha>
Então deve exibir a <mensagem> de cadastro inválido

Exemplos: 
|nomeusuario|email|senha|mensagem|
|caiov|caio@ebac|senha@123|"Cadastro inválido, favor inserir um endereço de email válido"|
|joaov|joao@ebac.br|senha@123|"Cadastro inválido, favor inserir um endereço de email válido"|
|helenav|helenaebac.com.br|senha@123|"Cadastro inválido, favor inserir um endereço de email válido"|

Esquema do Cenário: Informações faltando

Quando eu não digitar <email>
E ou o <Nome> 
E ou a <senha>
Então deve exibir a <mensagem> de cadastro inválido 

Exemplos: 
|nomeusuario|email|senha|mensagem|
||caio@ebac.com.br|senha@123|"Cadastro inválido, todos os dados restantes"|
|caiov|caio@ebac.com.br||"Cadastro inválido, todos os dados restantes"|
|caiov||senha@123|"Cadastro inválido, todos os dados restantes"|
