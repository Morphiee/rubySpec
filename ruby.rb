class Vehicle
    attr_accessor :wheels, :year, :light, :signal, :accelerate, :speed, :honk, :brake, :model
    def initialize(model="none", signal="off", wheels=4, year=1998, light=false, honk="beep")
        @signal = signal
        @wheels = wheels
        @year = year
        @light = light
        @speed = 0.0
        @honk = honk
        @model = model
    end

    def lightToggle
        if @light == false
            @light = true
        else
            @light = false
        end
    end

    def turn_signals(signal)
        puts "Which way to turn? (Left, Right, or Off)"
        # get_signal = gets.chomp.downcase
        if signal == "right"
            @signal = "right"
        elsif signal == "left"
            @signal = "left"
        elsif signal == "off"
            @signal = "off"
        else
            puts "your suck! Try again."
        end
    end
end

class Car < Vehicle

end

class Toyota < Car
    def honk
        @honk = "WHOOP"
    end
    def accelerate
        @speed += 7
    end
    def brake
        @speed -= 5
    end
    def year
        @year = 1998
    end
    def model
        @model = "toyota"
    end

end

my_toyota = Toyota.new

p Toyota.to_s

class Tata < Car
    def honk
        @honk = "beep"
    end
    def accelerate
        @speed += 2
    end
    def brake
        @speed -= 1.25
    end
    def year
        @year = 3005
    end
    def model
        @model = "tata"
    end
end

my_tata = Tata.new


p Tata.to_s

class Tesla < Car
    def honk
        @honk = "Beep-bee-bee-boop-bee-doo-weep"
    end
    def accelerate
        @speed += 10
    end
    def brake
        @speed -= 7
    end
    def year
        @year = 2016
    end
    def model
        @model = "tesla"
    end
end
my_tesla = Tesla.new


p Tesla.to_s

class Garage
    attr_accessor :garage
    def initialize
        @garage = []
    end
end
my_garage = Garage.new
my_garage.garage << my_tata
my_garage.garage << my_tesla
my_garage.garage << my_toyota


p my_garage.garage.sort_by{|o| o.model}
