puts "Create some Restaurants"

address = { 
  street: "Ladeira da Glória, 8 - Glória",
  city: "Rio de Janeiro - RJ",
  country: "Brazil"
}

Restaurant.create! name: "Amareleen", **address
Restaurant.create! name: "Verdeen", **address

puts "Let's drink a beer"
puts %{
  .~~~~.
  i====i_
  |cccc|_)
  |cccc|
  `-==-'

}

puts "Done!"
