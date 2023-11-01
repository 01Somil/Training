class Vehicle
  def tyreType
    puts "Heavy"
  end
end

class Car < Vehicle
  def tyreType
    puts "Small"
  end
end

class Truck < Vehicle
  def tyreType
    puts "Big"
  end
end

vehicle = Vehicle.new
vehicle.tyreType
vehicle = Car.new
vehicle.tyreType
vehicle = Truck.new
vehicle.tyreType
