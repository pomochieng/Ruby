prices = [2.99, 25.00, 9.99]


puts prices[0] = 0.99
puts prices[2] = 1.99
puts prices[1] = 2.99

index = 0
while index < prices.length
  puts prices[index]
  index += 1
end

prices [3] = 3.99
prices [6] = 6.99
p prices [7]

puts prices =  [7.99, 25.00, 3.99, 9.99]
puts prices.class

puts prices.first
puts prices.last
puts prices.length
puts prices.include?(25.00)
puts prices.find_index(9.99)

prices.push(0.99)
p prices

prices.pop
p prices

prices.shift
p prices

prices << 5.99
prices << 8.99
p prices

puts ["d", "o", "g"].join
puts ["d", "o", "g"].join("-")

p "d-o-g".chars
p "d-o-g".split("-")

def total(prices)
  amount = 0
  index = 0
  while index < prices.length
    amount += prices[index]
    index += 1
  end
  amount
end

  prices = [3.99, 25.00, 8.99]

  puts format("%.2f", total(prices))

def refund(prices)
  amount = 0
  index = 0
  while index < prices.length
    amount -= prices[index]
    index += 1
  end
  amount
end

puts format("%.2f", refund(prices))


def show_discounts(prices)
  index = 0
  while index < prices.length
    amount_off = prices[index] / 3.0
    puts format("Your discount: $%.2f", amount_off)
    index += 1
  end
end

show_discounts(prices)


