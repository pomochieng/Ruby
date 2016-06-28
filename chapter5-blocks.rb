def my_method(&my_block)
  puts "We're in the method, about to invoke your block!"
  my_block.call
  puts "We're back in the method!"
end



my_method do#The Call to my_methodi
  puts "We're in the block!"
end
#Calling the same method with different blocks
my_method do
  puts "It's a block party!"
end

my_method do
  puts "Woooooooooooo!"
end

#Calling a block multiple times
def twice(&my_block)
  puts "In the method, about to call the block!"
  my_block.call #call the block
  puts "Back in the method, about to call the block again!"
  my_block.call #call the block again
  puts "Back in the method, about to return!"
end

twice do
  puts "Wooooooo!"
end

#Block Parameters
def print_parameters(p1, p2)
  puts p1,p2
end

print_parameters("one", "two")

def give(&my_block)
  my_block.call("2 turtle doves", "1 patridge")
end

give do |present1, present2|
  puts "My method gave to me....."
  puts present1, present2
end





