require_relative "attribute.rb"

class Engine
    def self.add_attr(name,type,value)
        Attribute.load
        attr = Attribute.new(name,type,value)
        Attribute.save
    end
    
    def self.show_attr
        Attribute.load
        Attribute.print
    end

    def self.menu
        puts "Welcome to the game engine, please choose your option"
        quit = false
        while(!quit)
             puts "[A]dd new attributes"
             puts "[S]how all attributes"
             puts "[Q]uit"
            option = gets.chomp.upcase
            case option
            when "A"
                puts "Please enter new attribute Name : "
                name = gets.chomp.capitalize
                puts "Please enter new attribute Type : "
                type = gets.chomp.capitalize
                puts "Please enter new attribute default value : "
                value = gets.chomp
                
                puts "The attribute you have entered is \n Name: %s \n Type: %s \n Default Value: %s \n" % [name,type,value]
                puts "Are you sure to add this attribute in to game ? Y/N"
                processed = false
                while(!processed)
                    choice = gets.chomp.upcase
                    case choice
                    when "Y"
                        processed = true
                        add_attr(name,type,value)
                        puts "Attribute successfully added"
                    when "N"
                        "Attribute not add"
                        processed = true
                    else
                        "Invalid input"
                    end
                end
            when "S"
                show_attr
            when "Q"
                quit = true
                puts "Engine shutting down.."
            else
                puts "Invalid input"
            end
        end
    end
end