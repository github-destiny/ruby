class Greeter
    def initialize(name = "world")
        @name = name
    end

    def sya_hi
        puts "hello #{@name}"
    end

    def say_bye
        puts "bye #{@name}"
    end

end

class Greeter
    attr_accessor :name
end


g = Greeter.new
g.name = "Nero Claudius"
g.sya_hi
g.say_bye