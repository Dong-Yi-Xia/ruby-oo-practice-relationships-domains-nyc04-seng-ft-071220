class Trip

    attr_accessor :days, :guest, :listing

    @@all = []

    def initialize(days, guest, listing)
        @days = days
        @guest = guest
        @listing = listing
        @@all << self
    end

    def self.all
        @@all
    end

end










# #### Trip

# - #listing
#   - returns the listing object for the trip
# - #guest
#   - returns the guest object for the trip
# - .all
#   - returns an array of all trips
#belong to listing and guest

