def print_block_result
  block_result = yield    #Assigns the result of the block to a variable
  puts block_result
end

print_block_result { 1 + 1 }

print_block_result do
  "I'm not the last expression, so I'm not the return value."
  "I'm the result!"    #Only the last expression is returned
end

print_block_result { "I hated Truncated".include?("Truncated") }

def triple_block_result
  puts 3 * yield
end

triple_block_result { 2 }
triple_block_result { 5 }

def greet
  puts "Helllloooo, #{yield}!"
end

greet { "Liz" }

def alert_if_true
  if yield
    puts "Block returned true!"
  else
    puts "Block returend false."
  end
end


alert_if_true { 2 + 2 == 5}
alert_if_true { 2 > 1 }

p [1, 2, 3, 4, 5].find_all { |number| number.even? }
p [1, 2, 3, 4, 5].find_all { |number| number.odd? }








