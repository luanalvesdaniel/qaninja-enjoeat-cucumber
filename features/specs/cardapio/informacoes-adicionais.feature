#language: pt

Funcionalidade: Informações Adicionais
	Para que eu possa ver as informações adicionais
	Sendo um usuário que escolheu um restaurante
	Posso ver a categoria, desrição detalhada e horários de funcionamento

	@infos
	Cenario: Detalhes do restaurante

		Dado que eu acesso a lista de restaurantes
		Quando eu escolho o restaurante "Burger House"
		Então eu vejo as seguintes informações adicionais:
			| categoria | Hamburgers                               |
			| descricao | 40 anos se especializando em trash food. |
			| horarios  | Funciona todos os dias, de 10h às 22h    |
