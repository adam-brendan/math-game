class Game < Player
    attr_accessor :player1, :player2
    def initialize
        @player1 = Player.new("Player 1")
        @player2 = Player.new("Player 2")
        @@current_player = @player1
        @@other_player = @player2
    end
    def turn
        puts "----- NEW TURN -----"
        question_generator(@@current_player)
        if (@@current_player.lives == 0)
            puts "----- GAME OVER -----"
            puts "#{@@other_player.name} wins with a score of #{@@other_player.lives}/3!"
        else
            change_player
            turn
        end
    end
    def change_player
        if (@@current_player == @player1)
            @@current_player = @player2
            @@other_player = @player1
        elsif (@@current_player == @player2)
            @@current_player = @player1
            @@other_player = @player2
        end
    end
end



