class Game
    def initialize
      @total_points = 0
      @rooms = {
        1 => 5,
        2 => 10,
        3 => 15
      }
    end
  
    def play
      puts "Welcome to the Adventure Game!"
      puts "You have #{@total_points} points."
  
      loop do
        puts "Choose a room (1-3) to enter or 'exit' to end the game:"
        input = gets.chomp.downcase
  
        case input
        when '1', '2', '3'
          room_number = input.to_i
          enter_room(room_number)
        when 'exit'
          end_game
          break
        else
          puts "Invalid input. Please choose a room number (1-3) or 'exit'."
        end
      end
    end
  
    private
  
    def enter_room(room_number)
      points = @rooms[room_number]
      @total_points += points
      puts "You entered Room #{room_number} and earned #{points} points."
      puts "You now have #{@total_points} points."
    end
  
    def end_game
      puts "Game over! You collected a total of #{@total_points} points."
    end
  end
  
  # Start the game
  game = Game.new
  game.play
  #give an array numbers
numbers = [1, 2, 3, 4, 5]

puts "Doubleed numbers: "
numbers.each { |num| puts num * 2}

tripled_numbers = numbers.map { |num| num * 3}

puts "Tripled numbers:"
puts tripled_numbers.inspect
