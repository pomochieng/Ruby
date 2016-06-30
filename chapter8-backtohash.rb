class CelestialBody
  attr_accessor :type, :name
end

default_body = CelestialBody.new
default_body.type = 'planet'
bodies = Hash.new(default_body)

bodies = Hash.new do |hash, key|
  body = CelestialBody.new
  body.type = "planet"
  hash[key] = body
  body
end


bodies['Mars'].name = 'Mars'
bodies['Europa'].name = 'Europa'
bodies['Europa'].type = 'moon'
bodies['Venus'].name = 'Venus'


p bodies['Mars']
p bodies['Europa']
p bodies['Venus']

p bodies

p bodies['Europa']
p bodies['Europa']
bodies['Europa'].type = 'Moon'
p bodies['Europa']


p my_hash = {}
p my_array = []
p my_integer = 20
p my_hash['A'] = ['Apple']
p my_array[0] = 245



greetings = Hash.new do |hash, key|
  hash[key] = "Hi, #{key}"
end

p greetings["Kayla'"]

p greetings


bodies = Hash.new do |hash, key|
  body = CelestialBody.new
  body.type = "planet"
  hash[key] = body
end


p bodies['Mars']



letters = ['a', 'c', 'a', 'b', 'c', 'a']

counts = Hash.new(0)

letters.each do |letter|
  counts[letter] += 1
end

p counts


number = 0
puts number.object_id
number = number + 1
puts number.object_id



