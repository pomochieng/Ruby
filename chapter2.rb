def print_sum(arg1, arg2)
  print arg1 + arg2
end


def accelerate
  puts "Stepping on the gas"
  puts "Speeding up"
end

def sound_horn
  puts "Pressing the horn button"
  puts "Beep beep"
end

def use_headlights(brightness)
  puts "Turning on #{brightness} headlights"
  puts "Watch out for deer!"
end


sound_horn
accelerate
use_headlights ("high-beam")


def print_area(length, width)
  puts length * width
end

def order_soda(flavor, size = "medium", quantity = 1)
  if quantity == 1
    plural = "soda"
  else
    plural = "sodas"
  end
  puts "#{quantity} #{size} #{flavor} #{plural}, coming right up! "
end

order_soda("Orange")
order_soda("lemon-lime", "small", 2)
order_soda("grape", "large")

#no dumb Questions
def say_hello (name)
  puts "Hello, #{name} !"
end

def use_headlights(brightness = "low-beam")
  puts "Turning on #{brightness} headlights"
  puts "Watch out for deer!"
end

use_headlights
use_headlights("high-beam")


def mileage(miles_driven, gas_used)
  return miles_driven / gas_used
end

trip_mileage = mileage(400, 12)
puts "You got #{trip_mileage} MPG on this trip."

lifetime_mileage = mileage(11432, 366)
puts "This car averages #{lifetime_mileage} MPG."

def mileage(miles_driven, gas_used)
  if gas_used == 0
    return 0.0
  end
  miles_driven / gas_used
end

puts mileage(0, 0)


class Dog
  def talk
    puts "Bark!"
  end
  def move (destination)
    puts "Running to the #{destination}."
  end
end

fido = Dog.new
rex = Dog.new

fido.talk
rex.move("food bowl")


