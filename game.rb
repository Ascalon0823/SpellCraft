require_relative "attribute.rb"

class Game
    @@gameVersion = 0.01
    def self.version
        puts "Current game version = #@@gameVersion"
    end
    
    def initialize
        Attribute.load
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