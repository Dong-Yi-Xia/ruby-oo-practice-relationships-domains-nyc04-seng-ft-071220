class Listing

    attr_accessor :place

    @@all = []

    def initialize(place)
        @place = place
        @@all << self
    end

    def self.all
        @@all
    end

    def trips
        Trip.all.select do |trip|
            trip.listing == self
        end
    end

    def guests
        self.trips.map do |trip|
            trip.guest
        end
    end

    def trip_count
        self.trips.count
    end

    def self.find_all_by_city(city)
        Trip.all.select do |trip|
            trip.listing.place == city
        end
    end

    def self.most_popular
        Listing.all.max_by do |list|
            list.trip_count
        end

    end


end










# #### Listing

# - #guests
#   - returns an array of all guests who have stayed at a listing
# - #trips
#   - returns an array of all trips at a listing
# - #trip_count
#   - returns the number of trips that have been taken to that listing
# - .all
#   - returns an array of all listings
# - .find_all_by_city(city)
#   - takes an argument of a city name (as a string) and returns all the listings for that city
# - .most_popular
#   - finds the listing that has had the most trips
