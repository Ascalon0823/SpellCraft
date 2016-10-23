
class Attribute
    @@no_of_attributes = 0
    def self.no_of_attributes
      @@no_of_attributes
    end
    @@ha_attr = Hash.new
    def self.attributes
        @@ha_attr
    end
    def initialize(name,type,value)
        @name = name
        @type = type
        @value = Integer(value) rescue value
        @@no_of_attributes+=1
        @@ha_attr[name]=self
    end
    
    def getName
        return @name
    end
    def getType
        return @type
    end
    def getValue
        return @value 
    end 

    def self.save
        f = File.open("world_descripter/attributes.wd","w")
        @@ha_attr.each { |name,attr|
            line = "%s %s %s \n" % [attr.getName,attr.getType,attr.getValue]
            f.write(line)
        }
        f.close
    end

    def self.load
        @@no_of_attributes=0
        @@ha_attr.clear
        f = File.open("world_descripter/attributes.wd","r")
        f.each_line do |line|
            details = line.split
            Attribute.new(details[0],details[1],details[2])
        end
        f.close
    end
  
    def self.print
        puts "========================================================"
        @@ha_attr.each {|key,attr|
            puts "Attribute name = %s, type = %s, default value = %s" % [attr.getName,attr.getType,attr.getValue]
        }
        puts "========================================================"
    end
    
    def self.find(attr)
        @@ha_attr[attr]
    end
end