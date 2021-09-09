require "faker"

puts "Limpiando base de datos..."

Category.destroy_all
Service.destroy_all
Provider.destroy_all
Customer.destroy_all
SocialNetwork.destroy_all
Appointment.destroy_all

puts "Creando categorías..."
higiene = Category.create(name: "Higiene y estética")
medicina = Category.create(name: "Servicios veterinarios y medicina alternativa")
petshop = Category.create(name: "Petshop")
adopcion = Category.create(name: "Adopción y servicios complementarios")

puts "Creando proveedores..."
proveedor_1 = Provider.create(
  first_name: Faker::Name.unique.name,
  last_name: Faker::Name.unique.name,
  email: Faker::Internet.email,
  address: Faker::Address.street_address,
  password: 12341234,
  dni: Faker::ChileRut.full_rut
)

proveedor_2 = Provider.create(
  first_name: Faker::Name.unique.name,
  last_name: Faker::Name.unique.name,
  email: Faker::Internet.email,
  address: Faker::Address.street_address,
  password: 12341234,
  dni: Faker::ChileRut.full_rut
)

proveedor_3 = Provider.create(
  first_name: Faker::Name.unique.name,
  last_name: Faker::Name.unique.name,
  email: Faker::Internet.email,
  address: Faker::Address.street_address,
  password: 12341234,
  dni: Faker::ChileRut.full_rut
)

proveedor_4 = Provider.create(
  first_name: Faker::Name.unique.name,
  last_name: Faker::Name.unique.name,
  email: Faker::Internet.email,
  address: Faker::Address.street_address,
  password: 12341234,
  dni: Faker::ChileRut.full_rut
)

proveedor_5 = Provider.create(
  first_name: Faker::Name.unique.name,
  last_name: Faker::Name.unique.name,
  email: Faker::Internet.email,
  address: Faker::Address.street_address,
  password: 12341234,
  dni: Faker::ChileRut.full_rut
)

puts "Creando servicios.."
servicio_1 = Service.new(
  name: "Peluquería uno",
  address: Faker::Address.street_address,
  city: Faker::Address.city,
  description: Faker::Lorem.paragraph,
  telephone: Faker::PhoneNumber.cell_phone,
  rating: rand(1..5)
)
servicio_1.category = higiene
servicio_1.provider = proveedor_1
servicio_1.save

servicio_2 = Service.new(
  name: "Veterinaria uno",
  address: Faker::Address.street_address,
  city: Faker::Address.city,
  description: Faker::Lorem.paragraph,
  telephone: Faker::PhoneNumber.cell_phone,
  rating: rand(1..5)
)

servicio_2.category = medicina
servicio_2.provider = proveedor_2
servicio_2.save

servicio_3 = Service.new(
  name: "Hotel de mascotas",
  address: Faker::Address.street_address,
  city: Faker::Address.city,
  description: Faker::Lorem.paragraph,
  telephone: Faker::PhoneNumber.cell_phone,
  rating: rand(1..5)
)

servicio_3.category = adopcion
servicio_3.provider = proveedor_2
servicio_3.save

servicio_4 = Service.new(
  name: "Funeraria",
  address: Faker::Address.street_address,
  city: Faker::Address.city,
  description: Faker::Lorem.paragraph,
  telephone: Faker::PhoneNumber.cell_phone,
  rating: rand(1..5)
)

servicio_4.category = adopcion
servicio_4.provider = proveedor_3
servicio_4.save
