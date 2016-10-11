require "objspace"

class Attribute
    @@no_of_attributes = 0
    @@attributes = []

    def initialize(name,type,value)
        @name = name
        @type = type
        @value = value
        @@no_of_attributes+=1
        @@attributes<<self
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
        @@attributes.each do |attr|
            line = "%s %s %s \n" % [attr.getName,attr.getType,attr.getValue]
            f.write(line)
        end
        f.close
    end

    def self.load
        @@no_of_attributes=0
        @@attributes.clear
        f = File.open("world_descripter/attributes.wd","r")
        f.each_line do |line|
            details = line.split
            Attribute.new(details[0],details[1],details[2])
        end
        f.close
    end
  
    def self.print
        puts "========================================================"
        @@attributes.each do |attribute|
            puts "Attribute name = %s, type = %s, default value = %s" % [attribute.getName,attribute.getType,attribute.getValue]
        end
        puts "========================================================"
    end
end