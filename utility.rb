require_relative "attribute.rb"
require_relative "battle.rb"
require_relative "character.rb"
require_relative "effect.rb"
class Utility
    @@calculation = Hash.new
    def self.load
        @@calculation.clear
        f = File.open("world_descripter/calculation.wd","r")
        f.each_line do |line|
            details = line.split
            @@calculation[details.shift] = details
        end
        f.close
    end
    
    def self.calculate(object,attr) #The attrs required for calculate attr must be a subset of attrs of object`s type 
        calculation = @@calculation[attr]
        operands= calculation.values_at(* calculation.each_index.select { |i| i.even?  })
        elements= calculation.values_at(* calculation.each_index.select { |i| i.odd?  })
        result = 0
        operands.each_with_index { |operand,index| 
            element = elements[index]
            element = Integer(element) rescue element
            if(element.is_a? String)
                element = object.getAttr(element)
            end
            result = operate(result,operand,element)#Dangerous Implementation!!!
            
        }
        return result
    end
    

    def self.operate(result,operand,element)
        case operand
        when "P"
            result = result + element
        when "T"
            result = result * element
        when "D"
            result = result / element
        when "M"
            result = result - element
        else
        end
    end
    
end