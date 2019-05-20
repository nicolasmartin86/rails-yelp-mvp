# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#

puts 'Cleaning database...'
Restaurant.destroy_all

puts 'Creating restaurants...'
restaurants_attributes = [
  {
    name:         'Dishoom',
    address:      '7 Boundary St, London E2 7JE',
    phone_number: '+44-432-432-432',
    category:     'chinese'
  },
  {
    name:         'Pizza East',
    address:      '56A Shoreditch High St, London E1 6PQ',
    phone_number: '+44-324-45-769',
    category:     'italian'
  },
  {
    name:         'Le diamant de Paris',
    address:      '59 Rue Servan, 75011 Paris',
    phone_number: '01 43 38 17 60',
    category:     'french'
  },
  {
    name:         'Les Jardins Contini',
    address:      '49 Avenue du Général Leclerc, 75014 Paris',
    phone_number: '01 43 20 25 34',
    category:     'italian'
  },
  {
    name:         'Sushi Ba',
    address:      '39 Rue Saint-Ambroise, 75011 Paris',
    phone_number: '01 42 93 11 30',
    category:     'japanese'
  }
]
Restaurant.create!(restaurants_attributes)
puts 'Finished!'
