class Station
    attr_reader :station_id, :capacity, :name, :scooters
    # @@stations = []

    def initialize(station_id, capacity, name)
        @station_id = station_id
        @capacity = capacity
        @name = name
        @scooters = []
    end

    def add_scooter(scooter)
        if @scooters.length < @capacity
            @scooters << scooter
            puts "Scooter added to #{@name} station"
        else
            puts "The station is already at full capacity."
        end

        @scooters
    end

    # def self.stations
    #     @@stations
    # end
end

# station1 = Station.new("Ruby", 3)
# station2 = Station.new("Pearl", 9)
# station3 = Station.new("Topaz", 7)

# all_stations = Station.stations
# all_stations.each do |station|
#     puts "Station: #{station.station}, Fare: #{station.fare}"
# end

