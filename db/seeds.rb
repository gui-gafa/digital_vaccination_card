# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


['guilherme', 'lourdes', 'maique', 'marcio'].each do |name|
  User.create(
    email: "#{name}@gmail.com",
    password: '123456',
    first_name: name.capitalize,
    last_name: Faker::Name.last_name,
    cpf: CPF.generate,
    birth_date: Faker::Date.birthday(min_age: 18, max_age: 65),
    address: Faker::Address.street_name,
    authenticated: false,
    role: 'Cidadão'
    )

  User.create(
    email: "#{name}@sus.com",
    password: '123456',
    first_name: name.capitalize,
    last_name: Faker::Name.last_name,
    cpf: CPF.generate,
    birth_date: Faker::Date.birthday(min_age: 18, max_age: 65),
    address: Faker::Address.street_name,
    authenticated: true,
    role: 'Profissional da Saúde'
    )

  User.create(
    email: "#{name}@admin.com",
    password: '123456',
    first_name: name.capitalize,
    last_name: Faker::Name.last_name,
    cpf: CPF.generate,
    birth_date: Faker::Date.birthday(min_age: 18, max_age: 65),
    address: Faker::Address.street_name,
    authenticated: true,
    role: 'Administrador'
    )
end

