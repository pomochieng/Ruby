def twice(&my_block)
  my_block.call
  my_block.call
end

def twice
  yield
  yield
end

def give(&my_block)
  my_block.call("2 turtle doves", "1 partridge")
end

def give
  yield "2 turtle doves", "1 patridge"
end

#block formats

def run_block
  yield
end

run_block do
  puts "do/end"
end

run_block { puts "braces" }


def take_this
  yield "present"
end

take_this do |thing|
  puts "do/end block got #{thing}"
end

take_this { |thing| puts "braces block got #{thing}" }

#Each method
def my_method
  yield 1
  yield 2
  yield 3
end

my_method { |param| puts param }

["a", "b", "c"].each { |param| puts param }


def total(prices)
  amount = 0
  prices.each do |price|
    amount += price
  end
  amount
end

prices = [3.99, 25.00, 8.99]

puts format("%.2f", total(prices))

#blocks and Varialble scope
def my_method
  greeting = "hello"
end

greeting = nil

run_block do
  greeting = "hello"
end

puts greeting

