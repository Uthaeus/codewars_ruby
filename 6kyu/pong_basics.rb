# Task:
# You must finish the Pong class. It has a constructor which accepts the maximum score a player can get throughout the game, and a method called play. This method determines whether the current player hit the ball or not, i.e. if the paddle is at the sufficient height to hit it back. There're 4 possible outcomes: player successfully hits the ball back, player misses the ball, player misses the ball and his opponent reaches the maximum score winning the game, either player tries to hit a ball despite the game being over. You can see the input and output description in detail below.



class Pong
  attr_reader :max_score, :game_over, :p1_score, :p2_score

  def initialize(max_score)
    @max_score = max_score
    @p2_score = 0
    @p1_score = 0
    @turn = 1
    @game_over = false
  end

  
  def play(ball_pos, player_pos)
    @game_over == true ? (return "Game Over!") : (puts "Turn #{@turn}")

    if ball_pos <= player_pos + 3 && ball_pos >= player_pos - 3
      if @turn % 2 != 0
        @turn += 1
        return "Player 1 has hit the ball!"
      else
        @turn += 1
        return "Player 2 has hit the ball!"
      end
    else
      if @turn % 2 != 0
        @turn += 1
        @p2_score += 1
        if @p2_score == @max_score
          @game_over = true
          return "Player 2 has won the game!"
        else
          return "Player 1 has missed the ball!"
        end
      else
        @turn += 1
        @p1_score += 1
        if @p1_score == @max_score
          @game_over = true
          return "Player 1 has won the game!"
        else
          return "Player 2 has missed the ball!"
        end
      end
    end
  end
end



def  pong_the_game

  puts "************ Welcome ****************"
  puts 
  puts "This game is for observation purposes only"
  puts "------------------------------------------"
  puts
  puts 
  
  sleep 0.5

  gameplay = 'y'
  while gameplay == 'y' do 
    puts "What score would you like to play to?"
    score = gets.chomp.to_i
    puts
    puts "New Game Commencing..."
    puts
    sleep 0.5
    
    puts "P O N G"
    game = Pong.new(score) 
    puts
    puts "And so it begins...."

    while game.game_over == false do   
      temp = randomizer
      num1 = temp[0]
      num2 = temp[1]
      p game.play(num1, num2)
      puts 
      puts "Current Score:   "
      puts "__________________"
      puts
      puts "Player 1: #{game.p1_score}             Player 2: #{game.p2_score}"
      puts "************************************************"
      sleep 1
      puts
      puts
    end

    puts "The end..."
    puts
    puts "Would you like to play again? (y/n)"
    gameplay = gets.chomp!

    if gameplay != 'y'
      puts "Thanks for playing"
    end


  end
end

def randomizer
  ball = rand(100)
  tester = rand(50)
  opp = nil
  if tester % 3 == 0
    opp = ball - 10
  else
    opp = ball + 3
  end
  return [ball, opp]
end


pong_the_game















