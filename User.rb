require 'csv'

class User
    attr_reader :name, :contact_number

    def initialize(name, contact_number)
        @name = name
        @contact_number = contact_number
    end

    def make_payment(amount)
        start_time = Time.now
        puts "Payment of #{amount} made by #{@name}."
        save_to_csv(amount, start_time)
    end

    def save_to_csv(amount, start_time)
        # puts "User data saved to CSV file."
        CSV.open("user_data.csv", "a") do |csv|
            csv << [@name, @contact_number, amount, start_time]
        end
    end

    def save_to_txt(amount, start_time)
        File.open("user_data.txt", "a") do |file|
            file.puts("Name #{name}")
            file.puts("Contact Number #{contact_number}")
            file.puts("Amount #{amount}")
            file.puts("Start Time #{start_time}")
            file.puts('---')
        end
    end
end

puts "Welcome to Ele-Scoot"
# puts "Enter your name"
# user_input = gets.chomp

# File.open("user_data.txt", "a") do |file|
#     file.puts user_input
# end

# values = user_input.split(",")
#     CSV.open("user_data.csv", "a") do |csv|
#     csv << values
# end