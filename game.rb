require_relative "attribute.rb"
require_relative "character.rb"
require_relative "battle.rb"

class Game
    @@gameVersion = 0.01
    def self.version
        puts "Current game version = #@@gameVersion"
    end
    
    def initialize
        Attribute.load
        Character.load
        Battle.load
        Utility.load
        main_menu
    end

    def main_menu
        puts "please select"

        quit=false
        while(!quit)        
            puts "[A]rena"
            puts "[E]ngine"
            puts "[Q]uit"
            option = gets.chomp.upcase
            case option
            when "A"
                puts "Underconstruction"
                puts "Creating Character"
                test_Char = Character.new("Arc")
                puts test_Char.inspect
                test_Batt = Battle.new(test_Char)
                puts test_Batt.inspect
            when "E"
                puts "Engine Starting..."
                Engine.menu
            when "Q"
                puts "Bye~"
                quit= true
            else
                puts "Invalid input!"
            end
        end
    end
end