
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
  case user_response
    when 0
      booking=Booking.new
      puts 'Initializing Tent House...'    
      puts 'Tent House Initialized.'
    when 1
      if booking!=nil
          booking.show_available_options 
      else    
          puts default_msg    
      end
    when 2
      if booking!=nil
          booking.new_booking
      else
          puts default_msg
      end    
    when 3
      if booking!=nil
          booking.return_items
      else
          puts default_msg
      end    
    when 4
      if booking!=nil
          booking.show_all_booking_transactions
      else
          puts default_msg
      end    
    when 9
      puts "Thankyou for choosing Tent House Rental,Have a great day!"
      exit
    else
      puts "Choose a correct option."
    end 
end