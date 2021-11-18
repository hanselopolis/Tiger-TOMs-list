# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


User.create!(
    username: "badassBob",
    encrypted_password: "1234",
    first_name: "Bob",
    last_name: "Hill",
    email: "bboy@email.com",
    phone: "100-234-5678",
    bio: "I got the coolest parts in town!",
    address1: "1111 driving way",
    address2: " ",
    address3: " ",
    city: "NYC",
    state: "NY",
    country: "USA",
    zip: 10001
)

User.create!(
    username: "AngryAlice",
    encrypted_password: "4321",
    first_name: "Alice",
    last_name: "Bezos",
    email: "AtoZ@email.com",
    phone: "200-432-4321",
    bio: "Exotics only.",
    address1: "2222 star road",
    address2: " ",
    address3: " ",
    city: "Los Angeles",
    state: "CA",
    country: "USA",
    zip: 90210
)