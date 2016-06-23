class Vehicle
  attr_accessor :odometer
  attr_accessor :gas_used

  def accelerate
    puts "Floor it!"
  end

  def sound_horn
    puts "Beep! Beep!"
  end

  def steer
    puts "Turn front 2 wheels."
  end

  def mileage
    return @odometer / @gas_used
  end
end

#Creating subclasses
class Car < Vehicle
end

class Truck < Vehicle

  attr_accessor :cargo# Adding methods to subclasses

  def load_bed(contents)
    puts "securing #{contents} in the truck bed."
    @cargo = contents
  end

end

class Motorcycle < Vehicle
end

truck = Truck.new
truck.accelerate
truck.steer
truck.load_bed("259 bouncy balls")
puts "The truck is carrying #{truck.cargo}"
truck.odometer = 11432
truck.gas_used = 366
puts "Average MPG:"
puts truck.mileage


car = Car.new
car.odometer = 22914
car.gas_used = 728
puts car.instance_variables

puts "Lifetime MPG:"
puts car.mileage


