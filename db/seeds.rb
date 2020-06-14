require 'net/http'
require 'open-uri'
require 'json'
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# User.create(name:"User 1", email:"email@gmail.com", password:"123abc")
# User.create(name:"User 2", email:"email@gmail.com", password:"1232bc")

# p "seeing"
DATA = "https://data.cityofnewyork.us/resource/uvks-tn5n.json"

def get_programs
    uri = URI.parse(DATA)
    response = Net::HTTP.get_response(uri)
    response.body
    # binding.pry
    JSON.parse(response.body)
end


 data = get_programs()

 data.each do |dt|
    # byebug
    dt[:program]
    Program.create(program: dt["program"], site_name: dt["site_name"], borough_community: dt["borough_community"],grade_level_age_group: dt["grade_level_age_group"],number_and_street_address: dt["number_and_street_address"])
 end
