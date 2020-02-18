
require './booking'
puts "Welcome to 'Tent House Rental'"

booking = nil
while true
  puts
  puts 'Choose Your option from following:'
  puts '0. Initial/Reinitiate items.'
  puts '1. See list of items available.'
  puts '2. Book items.'
  puts '3. Return items.'
  puts '4. Tent house transactions.'
  puts '9. Exit.'
  puts 'Choose Your option:'


  user_response = gets.chomp
  user_response = user_response.to_i if !user_response.nil? && !user_response.empty?
  default_msg = 'Initialize first by pressing 0'
  
  if booking!=nil || user_response == 0
    case user_response
      when 0
        booking=Booking.new
        puts 'Initializing Tent House...'    
        puts 'Tent House Initialized.'
      when 1
        booking.show_available_options
      when 2
        booking.new_booking
      when 3
        booking.return_items
      when 4
        booking.show_all_booking_transactions
      when 9
        puts "Thankyou for choosing Tent House Rental,Have a great day!"
        exit
      else
        puts "Choose a correct option."
      end 
  else
      puts default_msg
  end    
end