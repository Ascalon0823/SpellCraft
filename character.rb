require "attribute.rb"
class Character
     @@characters = []
     @@no_of_characters = 0
     @@ha_charAttr = Hash.new
    
  def self.load
      @@ha_charAttr.clear
      @@characters = []
      @@no_of_character = 0
      if(Attribute.no_of_attributes == 0)
          Attribute.load
      end
      Attribute.attributes.each{ |attr|
          if ( attr.getType == "Character")
               @@ha_charAttr[attr.getName] = attr
          end
     }
  end
  
  def initialize(name)
     @name = name
     @ha_attr = Hash.new
     @@ha_charAttr.each { |key,attr|  @ha_attr[key]=attr.getValue}
     @@no_of_characters +=1
     @@characters<<self
  end
  
  def setAttr(attr,value)
      @ha_attr[attr] = value
  end
  
  def getAttr(attr)
      @ha_attr[attr]
  end
  
end