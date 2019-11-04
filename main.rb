require_relative "GhostGame"
require_relative "player"
    class Game
        attr_reader :num_player, :player
        def initialize 
        @num_player = 0 
        @players = []
        end

        def ask_for_number_of_player
            until @num_player > 1
            puts "Enter number of player, and must be more than 1"
            @num_player = gets.chomp.to_i
            end
            
            self.ask_for_name
        end

        def ask_for_name
           
            min = 0
            while min < @num_player
                system("clear")
                puts "Enter the name of the player"
                player_name = gets.chomp
                @players << Player.new(player_name)
                min += 1
            end
        end

        def start 
            self.ask_for_number_of_player
            game = GhostGame.new(@players)
            game.run
        end

    end

    if $PROGRAM_NAME == __FILE__
    start_game = Game.new
    start_game.start
    end
