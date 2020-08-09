require 'pry'
require 'require_all'
require_all "../airbnb"


bob = Guest.new("Bob")
jame = Guest.new("Jame")
chris = Guest.new("Chris")

hawaii = Listing.new("Hawaii")
japan = Listing.new("Japan")
paris = Listing.new("Paris")

trip1 = Trip.new(5, bob, hawaii)
trip2 = Trip.new(3, bob, japan)
trip3 = Trip.new(10, jame, paris)
trip3 = Trip.new(10, jame, paris)
trip4 = Trip.new(3, chris, paris)
trip5 = Trip.new(3, chris, japan)

bob.trips
bob.listings
Guest.pro_traveller
Guest.find_all_by_name("Jame")

japan.trips
japan.guests

Listing.find_all_by_city("Paris")
Listing.most_popular

binding.pry
0