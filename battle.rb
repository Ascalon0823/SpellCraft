require "attribute.rb"
require "character.rb"
require_relative "utility.rb"

class Battle
        @@ha_battAttr = Hash.new
        @@no_of_battlers = 0
        @@ha_battlers = Hash.new
        def self.load
            @@ha_battAttr.clear
            @@no_of_battlers = 0
            @@ha_battlers.clear
            if(Attribute.no_of_attributes == 0)
                  Attribute.load
            end
            Attribute.attributes.each{ |key,attr|
                if ( attr.getType == "Battle")
                        @@ha_battAttr[key] = attr.getValue
                end
         }
        end
        
        def initialize(character)
              @name = character.getName
              @ha_attr = Hash.new
              @@ha_battAttr.each { |key,attr|  
                  if(attr.is_a? Integer)
                      @ha_attr[key]=Utility.calculate(character,key)+attr
                  else
                      @ha_attr[key] = attr
                  end
                  
               }
              @@no_of_battlers +=1
              @@ha_battlers[character.getName]=self
        end
    
end

