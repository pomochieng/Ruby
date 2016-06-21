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



