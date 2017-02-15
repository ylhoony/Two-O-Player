require_relative 'number'

class Game

  def self.start(player1, player2)

    # def change_turn(turn)
    #   if turn == player1
    #     turn = player2
    #   elsif turn == player2
    #     turn = player1
    #   end
    # end


    player_1 = player1
    player_2 = player2
    turn = player_1

    def change_turn(turn)
      if turn == player1
        turn = player2
      elsif turn == player2
        turn = player1
      end
    end

    while player1.life > 0 && player2.life > 0
      number_1 = Number.generate_number
      number_2 = Number.generate_number
      total = number_1 + number_2

      print "#{turn.name}, What is the sum of #{number_1} and #{number_2} ?"
      answer = $stdin.gets.chomp

      if answer.to_i == total
        puts "you got it!"
        change_turn(turn)

        # if turn == player1
        #   turn = player2
        # elsif turn == player2
        #   turn = player1
        # end

      else
        puts "Wrong answer! total is #{total}"
        turn.life -= 1
        if turn.life == 0
          puts "you're done!"
          break
        else
          puts "You have #{turn.life} more chances"
          change_turn(turn)

          # if turn == player1
          #   turn = player2
          # elsif turn == player2
          #   turn = player1
          # end

        end
      end
    end

  end #def start
end