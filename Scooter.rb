class Scooter
    attr_reader :id

    def initialize(id)
        @id = id
        # @status = "Available"
        # @rental_price = rental_price
    end

    def rent
        if @status == "Rented"
            @status = "Available"
            puts "Scooter #{id} has been returned."
        else
            puts "This scooter is not currently not avaiable for rent."
        end
    end

    def return
        if @status == "rented"
            @status = "Available"
            puts "Scooter #{id} has been returned."
        else
            puts "This scooter is not currently rented."
        end
    end
    # def available
    #     @available
    # end

    # def rented
    #     @rented
    # end

    # def broken
    #     @broken
    # end

    def rent_scooter(user)
        if @available > 0
            @available -= 1
            @rented += 1
            puts "Scooter rented by #{user.name}"

            print "Enter the amount to be paid:"
            payment_amount = gets.chom.to_f

            print "Time start at (YYYY-MM-DD HH:MM:SS):"
            start_time = Time.parse(gets.chomp)

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

# scooter = Scooter.new(20, 9, 3)

# puts "Available scooters: #{scooter.available}"
# puts "rented out: #{scooter.rented}"
# puts "Under Maintenance: #{scooter.broken}"
