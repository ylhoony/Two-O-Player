require_relative 'number'

class Game

  def change_turn()
    if @turn == @player_1
      @turn = @player_2
    elsif @turn == @player_2
      @turn = @player_1
    end
  end

  def initialize(player1, player2)
    @player_1 = player1
    @player_2 = player2
    @turn = @player_1
  end


  def start

    while @player_1.life > 0 && @player_2.life > 0
      number_1 = Number.generate_number
      number_2 = Number.generate_number
      total = number_1 + number_2

      print "#{@turn.name}, What is the sum of #{number_1} and #{number_2} ?"
      answer = $stdin.gets.chomp

      if answer.to_i == total
        puts "you got it!"
        change_turn()

      else
        puts "Wrong answer! total is #{total}"
        @turn.life -= 1
        if @turn.life == 0
          puts "you're done!"
          break
        else
          puts "You have #{@turn.life} more chances"
          change_turn()

        end
      end
    end

  end #def start
end