# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Cadastrando os Clientes"
20.times do |i|
	Customer.create!(
	nome: Faker::Name.name,
	cpf: CPF.generate,
	cep: Faker::Address.zip_code,
	end_logr: Faker::Address.street_name,
	end_num: Faker::Address.building_number,
	end_compl: Faker::Address.secondary_address,
	end_cid: Faker::Address.city_suffix,
	#end_ug: Faker::Address.state_abbr,
	tel_fixo: Faker::PhoneNumber.phone_number,
	tel_cel: Faker::PhoneNumber.cell_phone,
	tel_trab: Faker::PhoneNumber.phone_number,
	email: Faker::Internet.email,
	rg: Faker::Number.number(8),
	rg_emissor: Faker::Lorem.words(1)
	)
end
puts "Clientes Cadastrados"

puts "Cadastrando os Fornecedores - PJ"
	Provider.create!(
	nome: "Karina Rabello",
	cnpj: CNPJ.generate,
	cep: Faker::Address.zip_code,
	end_logr: Faker::Address.street_name,
	end_num: Faker::Address.building_number,
	end_compl: Faker::Address.secondary_address,
	end_cid: Faker::Address.city_suffix,
	#end_ug: Faker::Address.state_abbr,
	tel_fixo: Faker::PhoneNumber.phone_number,
	tel_cel: Faker::PhoneNumber.cell_phone
	)


	Provider.create!(
	nome: "Maria Pinheiro",
	cnpj: CNPJ.generate,
	cep: Faker::Address.zip_code,
	end_logr: Faker::Address.street_name,
	end_num: Faker::Address.building_number,
	end_compl: Faker::Address.secondary_address,
	end_cid: Faker::Address.city_suffix,
	#end_ug: Faker::Address.state_abbr,
	tel_fixo: Faker::PhoneNumber.phone_number,
	tel_cel: Faker::PhoneNumber.cell_phone
	)


	Provider.create!(
	nome: "Class Brasil",
	cnpj: CNPJ.generate,
	cep: Faker::Address.zip_code,
	end_logr: Faker::Address.street_name,
	end_num: Faker::Address.building_number,
	end_compl: Faker::Address.secondary_address,
	end_cid: Faker::Address.city_suffix,
	#end_ug: Faker::Address.state_abbr,
	tel_fixo: Faker::PhoneNumber.phone_number,
	tel_cel: Faker::PhoneNumber.cell_phone
	)
 
puts "Fornecedores Cadastrados - PJ"