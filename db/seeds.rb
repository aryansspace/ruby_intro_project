# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'rubygems'
require 'bundler/setup'
require 'active_record'
require 'sqlite3'
require 'logger'
require 'json'

file = File.read('db/countries.json')
country_hash = JSON.parse(file)

country_hash.each do |c|
    new_country = Country.create(name: c['name'],
                                code: c['code'])


    2.times do
        fake_category_name = Faker::Name.name
        citizenshipp = c['name']

        new_citizen = new_country.citizens.build(name:fake_category_name,
                                                citizenship:citizenshipp)
                                                new_citizen.save
    end
end
