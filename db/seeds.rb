# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


# CATEGORIES
# Descriptions need to be better
vehicles = Category.create!(
    title: 'Vehicles',
    description: 'Buy an entire car'
)

parts_mechanical = Category.create!(
    title: 'Parts - Mechanical',
    description: 'Keep your car running with these parts'
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
    description: 'Find any tire to keep your car rolling'
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


#USERS
user1 = User.create!(
    first_name: "Bob",
    last_name: "Hill",
    email: "bboy@email.com",
    password: "password",
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

user2 = User.create!(
    first_name: "Alice",
    last_name: "Bezos",
    email: "AtoZ@email.com",
    password: "password",
    phone: "200-432-4321",
    bio: "Exotics only.",
    address1: "2222 star road",
    address2: "3333 black hole way",
    address3: "4444 supernova st",
    city: "Los Angeles",
    state: "CA",
    country: "USA",
    zip: 90210
)

CreditCard.create!(
    name: "Bobby Jones",
    number: "4456-7783-9754-3521",
    cvv: 119,
    exp_date: "09/01/2019",
    card_type: "MasterCard",
    user: user1
)

CreditCard.create!(
    name: "Alice Smith",
    number: "1344-9912-3456-9987",
    cvv: 134,
    exp_date: "08/01/2076",
    card_type: "American Express",
    user: user2
)

#ADS

ad1 = Ad.create!(
    title: 'Toyota 4Runner For Sale',
    description: 'Silver, 165000 miles, good condition',
    location: 'Memphis, TN',
    contact: 'bob@email.com',
    price: 5650.0,
    status: 'active',
    email: 'bob@email.com',
    category: vehicles,
    user: user1
)
Ad.create!(
    title: 'Nissan Altima',
    description: 'White, 72450 miles, brand new tires',
    location: 'Memphis, TN',
    contact: 'bob@email.com',
    price: 8500.0,
    status: 'active',
    email: 'bob@email.com',
    category: vehicles,
    user: user1
)
Ad.create!(
    title: 'Black Phone Mount',
    description: 'Mount up your phone to make using GPS that much easier',
    location: 'Memphis, TN',
    contact: 'alice@email.com',
    price: 25.0,
    status: 'active',
    email: 'alice@email.com',
    category: accessories,
    user: user2
)

ad2 = Ad.create!(
    title: 'Camo Steering Wheel Cover',
    description: 'Just buy it',
    location: 'Memphis, TN',
    contact: 'alice@email.com',
    price: 10.0,
    status: 'active',
    email: 'alice@email.com',
    category: accessories,
    user: user2
)

vehicles.image.attach(io: File.open('app/assets/images/seed_images/vehicles_cat.jpg'), filename: 'vehicles_cat.jpg')
parts_mechanical.image.attach(io: File.open('app/assets/images/seed_images/parts_mechanical_cat.jpg'), filename: 'parts_mechanical_cat.jpg')
parts_interior.image.attach(io: File.open('app/assets/images/seed_images/parts_interior_cat.jpg'), filename: 'parts_interior_cat.jpg')
parts_exterior.image.attach(io: File.open('app/assets/images/seed_images/parts_exterior_cat.jpg'), filename: 'parts_exterior.jpg')
tires.image.attach(io: File.open('app/assets/images/seed_images/tires_cat.jpg'), filename: 'tires_cat.jpg')
accessories.image.attach(io: File.open('app/assets/images/seed_images/accessories_cat.jpg'), filename: 'accessories_cat.jpg')
mechanics.image.attach(io: File.open('app/assets/images/seed_images/mechanics_cat.jpg'), filename: 'mechanics_cat.jpg')
other_services.image.attach(io: File.open('app/assets/images/seed_images/other_services_cat.jpg'), filename: 'other_services.jpg')
ad1.images.attach(io: File.open('app/assets/images/seed_images/4runner.jpg'), filename: '4runner.jpg')
ad2.images.attach(io: File.open('app/assets/images/seed_images/camo_wheel.jpg'), filename: 'camo_wheel.jpg')



