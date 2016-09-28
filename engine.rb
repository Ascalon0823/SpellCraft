require_relative "attribute.rb"

class Engine
    def self.add_attr(name,type,value)
        Attribute.load
        attr = Attribute.new(name,type,value)
        Attribute.save
    end
end