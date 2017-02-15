# player
# require './player.rb'


class Game

  def initialize

  end

  def generate_number
    rand(1..100)
  end


  # p player_1.name
  # p player_1.life

  # p player_2.name
  # p player_2.life



  ######## one player run ########

  player_1_life = 3
  player_2_life = 3


  while player_1_life > 0 && player_2_life > 0

  number_1 = generate_number
  number_2 = generate_number
  total = number_1 + number_2

  # player 1
    print "player1, What is the sum of #{number_1} and #{number_2} ?"
    answer = $stdin.gets.chomp

    if answer.to_i == total
      puts "you got it!"
    else
      puts "Wrong answer! total is #{total}"
      player_1_life -= 1
      if player_1_life == 0
        puts "you're done!"
        break
      else
        puts "You have #{player_1_life} more chances"
      end
    end

  number_1 = generate_number
  number_2 = generate_number
  total = number_1 + number_2

  # player 2
    print "player2, What is the sum of #{number_1} and #{number_2} ?"
    answer = $stdin.gets.chomp

    if answer.to_i == total
      puts "you got it!"
    else
      puts "Wrong answer! total is #{total}."
      player_2_life -= 1
      if player_2_life == 0
        puts "you're done!"
        break
      else
        puts "You have #{player_2_life} more chances"
      end
    end
  end

end