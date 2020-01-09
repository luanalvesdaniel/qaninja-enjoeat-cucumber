
Dado("que eu acesso a lista de restaurantes") do
	visit '/restaurants'
  end

Quando("eu escolho o restaurante {string}") do |restaurante|
	find('.restaurant-item', text: restaurante.upcase).click
end
  
Então("vejo os seguintes itens disponíveis no cardápio:") do |table|
	itens = all('.menu-item-info-box')
	product_data = table.hashes

	product_data.each_with_index do |value,index|
		expect(itens[index]).to have_text value['produto'].upcase
		expect(itens[index]).to have_text value['descricao']
		expect(itens[index]).to have_text value['preco']
	end
end

Então("eu vejo as seguintes informações adicionais:") do |table|
	infos = table.rows_hash
	datail = find('#detail')

	expect(datail).to have_text infos['categoria']
	expect(datail).to have_text infos['descricao']
	expect(datail).to have_text infos['horarios']
end