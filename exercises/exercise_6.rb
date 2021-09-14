require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

# Your code goes here ...
@store1.employees.create(first_name: "Khurram", last_name: "Virani", hourly_rate: 60)
@store1.employees.create(first_name: "Jo", last_name: "Jo", hourly_rate: 100)
@store2.employees.create(first_name: "Co", last_name: "Co", hourly_rate: 30)
@store2.employees.create(first_name: "Jon", last_name: "Doe", hourly_rate: 60)
puts Employee