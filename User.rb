require 'csv'

class User
    def initialize(name, contact_number)
        @name = name
        @contact_number = contact_number
    end

    def name
        @name
    end

    def contact_number
        @contact_number
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