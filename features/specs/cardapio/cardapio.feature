#language: pt

Funcionalidade: Cardápio
	Para que eu possa decidir o que eu pretendo comer
	Sendo um usuário que escolheu um restaurante
	Posso acessar o cardápio

	@cardapio
	Cenario: Produto

		Dado que eu acesso a lista de restaurantes
		Quando eu escolho o restaurante "Burger House"
		Então vejo os seguintes itens disponíveis no cardápio:
			| produto        | descricao                       | preco    |
			| Classic Burger | O clássico. Não tem como errar. | R$ 18,50 |
			| Batatas Fritas | Batatas fritas crocantes        | R$ 5,50  |
			| Refrigerante   | O refri mais gelado da cidade.  | R$ 4,50  |


	Cenario: Carrinho vazio

		Quando eu escolho o restaurante "Burger House"
		Então vejo a seguinte mensagem no carrinho: "Seu carrinho está vazio!"