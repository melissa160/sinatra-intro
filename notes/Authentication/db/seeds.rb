require 'faker'

10.times do |user|
  User.create(name: Faker::Name.name, email: Faker::Internet.email, password_hash: 'hola')
end
