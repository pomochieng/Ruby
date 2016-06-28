def find_adjective(string)
  words = string.split(" ")
  index = words.find_index("is")
  words[index + 1]
end


lines = []
File.open("reviews.txt") do |review_file|
  lines = review_file.readlines
end

relevant_lines = lines.find_all { |line| line.include?("Truncated") }
reviews = relevant_lines.reject { |line| line.include?("--") }

adjectives = reviews.map do |review|
  adjective = find_adjective(review)
  "'#{adjective.capitalize}'"
end

puts "The critics agree, Truncated is:"
puts adjectives

squares = [2, 3, 4].map { |number| number **2 }    #Make a new array with the squares of each number
cubes = [2, 3, 4].map { |number| number ** 3 }     #Make a new array with the cubes of each number
area_codes = ['1-800-555-0123', '1-402-555-0123'].map do |phone|
  phone.split("-")[1]    #Make arrays with just area codes
end

p squares, cubes, area_codes



