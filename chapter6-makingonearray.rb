numbers = [2, 3, 4]

squares = []      #make an array to hold results

numbers.each do |number|     #Loop through source array
  squares << number ** 2
end

p squares


numbers = [2, 3, 4]

cubes = []      #make an array to hold results

numbers.each do |number|     #Loop through source array
  cubes << number ** 3
end

p cubes


phone_numbers = ["1-800-555-0199", "1-402-555-0123"]

area_codes = []      #make an array to hold results

phone_numbers.each do |phone_number|     #Loop through source array
  area_codes << phone_number.split("-")[1]
end

p area_codes


