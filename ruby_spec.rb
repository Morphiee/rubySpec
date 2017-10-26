require 'rspec'
require_relative 'ruby'

describe "Vehicle" do
    it "has to be real" do
        expect{Vehicle.new}.to_not raise_error
    end

    it "has four wheels" do
        a_vehicle = Vehicle.new
        a_vehicle.wheels = 4
        expect(a_vehicle.wheels).to be 4
    end

    it "has model year" do
        a_model = Vehicle.new
        a_model.year = 1998
        expect(a_model.year).to be 1998
    end

    it "can toggle lights" do
        a_light = Vehicle.new
        expect(a_light.light).to eq false
        a_light.lightToggle
        expect(a_light.light).to eq true
    end

    it "can signal left and right" do
        a_signal = Vehicle.new
        expect(a_signal.turn_signals("left")).to eq "left"
        expect(a_signal.turn_signals("right")).to eq "right"
        expect(a_signal.turn_signals("off")).to eq "off"
    end
end

describe "Car" do
    it "has to be real" do
        expect {Car.new}.to_not raise_error
    end
    it "has to honk" do
        a_car = Car.new
        a_car.honk = "BEEP"
        expect(a_car.honk).to eq "BEEP"
    end
end

describe "Toyota" do
    it "inherets Car class" do
        a_toyota = Toyota.new
        a_toyota.honk = "WHOOP"
        expect(a_toyota.honk).to eq "WHOOP"
    end
    it "has to be real" do
        expect {Toyota.new}.to_not raise_error
    end
    it "speed starts at 0" do
        a_toyota = Toyota.new
        expect(a_toyota.speed).to eq 0.0
    end
    it "has to accelerate 7mph" do
        a_toyota = Toyota.new
        expect{a_toyota.accelerate}.to change{a_toyota.speed}.by(7)
    end
    it "has to brake 5mph" do
        a_toyota = Toyota.new
        expect{a_toyota.brake}.to change{a_toyota.speed}.by(-5)
    end
    it "has to be its own model" do
        a_toyota = Toyota.new
        a_toyota.model = "toyota"
        expect(a_toyota.model).to eq "toyota"
    end
end

describe "Tata" do
    it "inherets Car class" do
    a_tata = Tata.new
    a_tata.honk = "beep"
    expect(a_tata.honk).to eq "beep"
    end

    it "has to be real" do
        expect {Tata.new}.to_not raise_error
    end

    it "speed starts at 0" do
        a_tata = Tata.new
        expect(a_tata.speed).to eq 0.0
    end

    it "has to accelerate 2mph" do
        a_tata = Tata.new
        expect{a_tata.accelerate}.to change{a_tata.speed}.by(2)
    end

    it "has to brake by 1.25 mph" do
        a_tata = Tata.new
        expect{a_tata.brake}.to change{a_tata.speed}.by(-1.25)
    end
    it "has to be its own model" do
        a_tata = Tata.new
        a_tata.model = "tata"
        expect(a_tata.model).to eq "tata"
    end
end

describe "Tesla" do
    it "inherets Car class" do
    a_tesla = Tesla.new
    a_tesla.honk = "Beep-bee-bee-boop-bee-doo-weep"
    expect(a_tesla.honk).to eq "Beep-bee-bee-boop-bee-doo-weep"
    end
    it "has to be real" do
        expect{Tesla.new}.to_not raise_error
    end
    it "speed starts a 0" do
        a_tesla = Tesla.new
        expect(a_tesla.speed).to eq 0.0
    end
    it "has to accelerate 10mph" do
        a_tesla = Tesla.new
        expect{a_tesla.accelerate}.to change{a_tesla.speed}.by(10)
    end
    it "has to brake by 7mph" do
    a_tesla = Tesla.new
    expect{a_tesla.brake}.to change{a_tesla.speed}.by(-7)
    end
    it "has to be its own model" do
        a_tesla = Tesla.new
        a_tesla.model = "tesla"
        expect(a_tesla.model).to eq "tesla"
    end
end

describe "Garage" do
    it "can make an empty array" do
        a_my_garage = Garage.new
        a_my_garage.garage = []
        expect(a_my_garage.garage).to eq []
    end
    it "can be shoveled into array" do
        a_my_garage = Garage.new
        expect 
    end
end
