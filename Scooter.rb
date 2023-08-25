class Scooter
    def initialize(available, rented, broken)
        @available = available
        @rented = rented
        @broken = broken
    end

    def available
        @available
    end

    def rented
        @rented
    end

    def broken
        @broken
    end
end

scooter = Scooter.new(20, 9, 3)

puts "Available scooters: #{scooter.available}"
puts "rented out: #{scooter.rented}"
puts "Under Maintenance: #{scooter.broken}"