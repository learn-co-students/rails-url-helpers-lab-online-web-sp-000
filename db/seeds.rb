# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

otto = {
  first_name: "Otto",
  last_name: "Cedeno"
}
char = {
  first_name: "Charlotte",
  last_name: "Kassimir"  
}
joe = {
  first_name: "Joe",
  last_name: "LoNigro"  
}

Student.create(otto)
Student.create(joe)
Student.create(char)