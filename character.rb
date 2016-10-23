require "attribute.rb"
class Character
     @@no_of_characters = 0
     @@ha_charAttr = Hash.new
    @@ha_characters = Hash.new
    
  def self.load
      @@ha_charAttr.clear
      @@no_of_character = 0
      @@ha_characters.clear
      if(Attribute.no_of_attributes == 0)
          Attribute.load
      end
      Attribute.attributes.each{ |key,attr|
          if ( attr.getType == "Character")
               @@ha_charAttr[key] = attr.getValue
          end
     }
  end
  
  def initialize(name)
     @name = name
     @ha_attr = Hash.new
     @@ha_charAttr.each { |key,value|  @ha_attr[key]=value}
     @@no_of_characters +=1
     @@ha_characters[name] = self
  end
  
  def setAttr(attr,value)
      @ha_attr[attr] = value
  end
  
  def getAttr(attr)
      @ha_attr[attr]
  end
  
  def getName
      @name
  end
end