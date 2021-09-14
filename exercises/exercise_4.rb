require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'

puts "Exercise 4"
puts "----------"

# Your code goes here ...
stores = Store.create(name: "Surrey", annual_revenue: 224000, mens_apparel: false, womens_apparel: true)
stores = Store.create(name: "Whistler", annual_revenue: 1900000, womens_apparel: false, mens_apparel: true)
stores = Store.create(name: "Yaletown", annual_revenue: 430000, womens_apparel: true, mens_apparel: true)
stores.save
@mens_store = Store.where(mens_apparel: true)
puts "Mens apparel:"
@mens_store.each do |store|
    puts "name: #{store.name} annual revenue: #{store.annual_revenue}"
end
puts "----------"
@less_than_1m = Store.where("womens_apparel = true AND annual_revenue < 1000000")
@less_than_1m.each do |store|
    puts "name: #{store.name } annual revenue: #{store.annual_revenue}"
end