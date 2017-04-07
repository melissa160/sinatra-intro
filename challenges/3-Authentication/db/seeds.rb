require 'faker'

# Crea usuarios
10.times do |i|
  user_data = {name: Faker::Name.name, email: "#{Faker::Name.first_name}@gmail.com", password_hash: rand(100000..200000)}
  User.create(user_data)
end