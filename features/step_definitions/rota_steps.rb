require 'rspec/expectations'

Given('que existem dados de rotas registrados no sistema') do
  onibus1 = Onibus.create(placa: 'ABC-1235', chassi: '12121212121212122', modelo: 'Modelo A', capacidade: 50, status: 'true')
  onibus2 = Onibus.create(placa: 'DEF-5678', chassi: '12121212121212123', modelo: 'Modelo B', capacidade: 40, status: 'true')

  Rotum.create(nome: 'Rota 1', valor: 10.0, distancia: 100.0, duracao: 120, inicio: Time.now, fim: Time.now + 2.hours, origem: 'Origem 1', destino: 'Destino 1', onibus: onibus1)
  Rotum.create(nome: 'Rota 2', valor: 15.0, distancia: 150.0, duracao: 180, inicio: Time.now, fim: Time.now + 3.hours, origem: 'Origem 2', destino: 'Destino 2', onibus: onibus2)
end


Given('um ônibus com a placa {string} já percorreu algumas rotas') do |placa|
 @onibus = Onibus.create(placa: placa, chassi: '12121212121212121', modelo: 'Modelo A', capacidade: 50, status: 'true')

  Rotum.create(nome: 'Rota 1', valor: 10.0, distancia: 100.0, duracao: 120, inicio: Time.now, fim: Time.now + 2.hours, origem: 'Origem 1', destino: 'Destino 1', onibus: @onibus)
  Rotum.create(nome: 'Rota 2', valor: 15.0, distancia: 150.0, duracao: 180, inicio: Time.now, fim: Time.now + 3.hours, origem: 'Origem 2', destino: 'Destino 2', onibus: @onibus)
end

When('eu informo a placa do ônibus como {string}') do |placa|

  visit buscar_por_onibus_path
  select placa, from: 'placa'
  click_button 'Buscar'
end

Then('o sistema exibe a lista de rotas percorridas pelo ônibus') do

  expect(page).to have_content('Resultados:')
  expect(page).to have_content('Nome: Rota 1')
  expect(page).to have_content('Valor: 10.0')
  expect(page).to have_content('Distância: 100.0')
  expect(page).to have_content('Nome: Rota 2')
  expect(page).to have_content('Valor: 15.0')
  expect(page).to have_content('Distância: 150.0')
end
