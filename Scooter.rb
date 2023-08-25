class Scooter
    attr_reader :available, :rented, :broken

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

    def rent_scooter(user)
        if @available > 0
            @available -= 1
            @rented += 1
            puts "Scooter rented by #{user.name}"
            start_time = Time.now
            user.make_payment(5, start_time)
            end_time = Time.now
            calculate_rental_duration(start_time, end_time)
        else
            puts "No scooters available for rent."
        end
    end

    def calculate_rental_duration(start_time, end_time)
        duration = end_time - start_time
        puts "Rental duration is: #{duration} minutes"
    end
end

scooter = Scooter.new(20, 9, 3)

puts "Available scooters: #{scooter.available}"
puts "rented out: #{scooter.rented}"
puts "Under Maintenance: #{scooter.broken}"
