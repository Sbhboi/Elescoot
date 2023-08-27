require_relative 'User.rb'
require_relative 'Station.rb'
require_relative 'Scooter.rb'

# Create a user
puts "Enter your name:"
name = gets.chomp
puts "Enter your contact number:"
contact_number = gets.chomp
user = User.new(name, contact_number)
puts "Enter the amount to be pay:"
amount = gets.chomp.to_f
start_time = Time.now

user.save_to_csv(amount, start_time)
user.save_to_txt(amount, start_time)

# Create stations
station1 = Station.new(1, 10, "Ruby")
station2 = Station.new(2, 5, "Pearl")

# Add scooters to stations
scooter = Scooter.new(7)
# scooter1 = Scooter.new(7)
# scooter2 = Scooter.new(2)
station1.add_scooter(scooter)
# station2.add_scooter(scooter2)

# Rent a scooter
puts "Enter the scooter ID you want to rent:"
scooter_id = gets.chomp.to_i
scooter = station1.add_scooter(scooter).find { |s| s.id == scooter_id }
if scooter
  scooter.rent
  user.make_payment(amount)
else
  puts "Invalid scooter ID."
end

# Return a scooter
puts "Enter the scooter ID you want to return:"
scooter_id = gets.chomp.to_i
scooter = station1.scooters.find { |s| s.id == scooter_id }
if scooter
  scooter.return
else
  puts "Invalid scooter ID."
end