require 'csv'

class User
    attr_reader :name, :contact_number

    def initialize(name, contact_number)
        @name = name
        @contact_number = contact_number
    end
    
    # def name
    #     @name
    # end

    # def contact_number
    #     @contact_number
    # end

    def make_payment(amount)
        puts "Payment of #{amount} made by #{@name}."
        save_to_csv(amount, start_time)
    end

    def save_to_csv(amount, start_time)
        CSV.open("user_data.csv", "a") do |csv|
            csv << [@name, @contact_number, amount]
        end
    end
end

puts "Enter your name"
user_input = gets.chomp

File.open("user_data.txt", "a") do |file|
    file.puts user_input
end

values = user_input.split(",")
    CSV.open("user_data.csv", "a") do |csv|
    csv << values
end