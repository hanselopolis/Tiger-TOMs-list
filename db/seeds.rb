# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


# Descriptions need to be better
vehicles = Category.create!(
    title: 'Vehicles',
    description: 'Buy an entire car'
)

parts_mechanics = Category.create!(
    title: 'Parts - Mechanics',
    description: 'Mechanical Parts for sale'
)

parts_interior = Category.create!(
    title: 'Parts - Interior',
    description: 'Things that you can put inside your car'
)
parts_exterior = Category.create!(
    title: 'Parts - Exterior',
    description: 'Things that you can put outside your car'
)
tires = Category.create!(
    title: 'Tires',
    description: 'Tires of all kinds'
)
accessories = Category.create!(
    title: 'Accessories',
    description: 'Personalize your car with these things'
)
mechanics = Category.create!(
    title: 'Mechanics',
    description: 'These people can help fix your car up'
)
other_services = Category.create!(
    title: 'Other Services',
    description: 'Anything that does not fall into a category'
)

  #Ad objects
Ad.create!(
    title: 'Toyota 4Runner For Sale',
    description: 'Silver, 165000 miles, good condition',
    location: 'Memphis, TN',
    contact: 'guy@email.com',
    price: 5650.0,
    status: 'active',
    category: vehicles
)
Ad.create!(
    title: 'Nissan Altima',
    description: 'White, 72450 miles, brand new tires',
    location: 'Memphis, TN',
    contact: 'bob@email.com',
    price: 8500.0,
    status: 'active',
    category: vehicles
)
Ad.create!(
    title: 'Black Phone Mount',
    description: 'Mount up your phone to make using GPS that much easier',
    location: 'Memphis, TN',
    contact: 'alice@email.com',
    price: 25.0,
    status: 'active',
    category: accessories
)
Ad.create!(
    title: 'Camo Steering Wheel Cover',
    description: 'Just buy it',
    location: 'Memphis, TN',
    contact: 'alice@email.com',
    price: 10.0,
    status: 'active',
    category: accessories

  #user objects
User.create!(
    username: "badassBob",
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