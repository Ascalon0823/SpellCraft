class Effect
     @@effects = []
     @@no_of_effects = 0
     @@ha_effAttr = Hash.new
    
  def self.load
      @@ha_effAttr.clear
      @@effects = []
      @@no_of_effects = 0
      if(Attribute.no_of_attributes == 0)
          Attribute.load
      end
      Attribute.attributes.each{ |attr|
          if ( attr.getType == "Effect")
               @@ha_charAttr[attr.getName] = attr
          end
     }
  end
  
  def initialize(name)
     @name = name
     @ha_attr = Hash.new
     @@ha_effAttr.each { |key,attr|  @ha_attr[key]=attr.getValue}
     @@no_of_effects +=1
     @@effects<<self
  end
  
  def setAttr(attr,value)
      @ha_attr[attr] = value
  end
  
  def getAttr(attr)
      @ha_attr[attr]
  end
end
