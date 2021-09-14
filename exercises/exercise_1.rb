require_relative '../setup'

puts "Exercise 1"
puts "----------"

# Your code goes below here ...

stores = Store.create(name: "Burnaby", annual_revenue: 300000, mens_apparel: true, womens_apparel: true)
stores = Store.create(name: "Richmond", annual_revenue: 1260000, womens_apparel: true, mens_apparel: false)
stores = Store.create(name: "Gastown", annual_revenue: 1900000, womens_apparel: false, mens_apparel: true)
stores.save