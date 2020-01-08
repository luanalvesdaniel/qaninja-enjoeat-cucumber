
Dado("que eu tenho uma lista de restaurantes") do
	@restaurante_data = [
		{ name: 'Bread & Bakery', category: 'Padaria', delivery_time: '25 minutos', rating: 4.9 },
		{ name: 'Burger House', category: 'Hamburgers', delivery_time: '30 minutos', rating: 3.5 }
	]	
end

Quando("acesso a lista de restaurantes") do
	visit '/restaurants'
	@restaurantes = all('.restaurant-item')
end

Então("vejo todas as opções disponíveis") do

	expect(@restaurantes.size).to be > 0
	# expect(restaurantes.size).to eql 6

end

Então("cada restaurante deve exibir sua categoria") do
	@restaurante_data.each_with_index do |value, index|

		expect(@restaurantes[index]).to have_text value[:category]

	end
end

Então("cada restaurante deve exibir o tempo de entrega") do	
	@restaurante_data.each_with_index do |value, index|

		expect(@restaurantes[index]).to have_text value[:delivery_time]

	end
end

Então("cada restaurante deve exibir sua nota de avaliação") do
	@restaurante_data.each_with_index do |value, index|

		expect(@restaurantes[index]).to have_text value[:rating]

	end
end