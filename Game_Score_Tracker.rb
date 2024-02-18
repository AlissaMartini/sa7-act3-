Room_Points = [5, 10, 15]
total_score = 0


puts "Welcome to the Adventure Game!"
puts "You have #{total_score} points."


loop do
  
  puts "Choose a room (1-3) to enter or 'exit' to end the game:"
  choice = gets.chomp.downcase

  
  break if choice == 'exit'

  
  room_number = choice.to_i
  if room_number.between?(1, 3)
    total_score += Room_Points[room_number - 1]
    puts "You entered Room #{room_number} and earned #{Room_Points[room_number - 1]} points."
  else
    puts "Invalid choice. Please enter a number between 1 and 3."
  end
end


puts "Game over! You collected a total of #{total_score} points ."
