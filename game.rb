require_relative "attribute.rb"

class Game
    @@gameVersion = 0.01
    def self.version
        puts "Current game version = #@@gameVersion"
    end
    
    def initialize
        Attribute.load
        Attribute.print
    end

    

end