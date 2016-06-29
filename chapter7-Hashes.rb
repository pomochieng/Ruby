lines = []    #Create a variable that will still be accessible after the block.
File.open("votes.txt") do |file|     #Open the file and pass it to the block.
  lines = file.readlines     #Store all the files lines  in an array.
end

[
  ["Amber Graham", 1],
  ["Brian Martin", 1],
  ["Mikey Moose", 1],
]

{"H" => "Hydrogen", "Li" => "Lithium"}

elements = {"H" => "Hydrogen", "Li" => "Lithium"}
elements["Ne"] = "Neon"

puts elements["Li"]
puts elements["H"]
puts elements["Ne"]

mush = {1 => "one", "two" => 2, :three => 3.0}

p mush[:three]
p mush[1]
p mush["two"]


my_hash = {"one" => "two", :three => "four", 5 => "six"}
puts my_hash[5]
puts my_hash["one"]
puts my_hash["three"]
my_hash["seven"] = 8
puts my_hash["seven"]


protons = {"H" => 1, "Li" => 3, "Ne" => 10}
puts protons.class
puts protons.inspect
puts protons.length

puts protons.has_key?("Ne")

puts protons.has_value?(3)

p protons.keys

p protons.values

protons.each do |element, count|
  puts "#{element}: #{count}"
end


p lines

votes = Hash.new(0)

lines.each do |line|
  name = line.chomp
  name.upcase!     #Change the name to All CAPS before using it as a hash key.
  if votes[name]     #if votes[name] is not nil
    votes[name] += 1     #....increment the existing total.
  else     #if votes[name] is nil.....
    votes[name] = 1     #....add the name to the hash with a value of 1.
  end
end

votes.each  do |name, count|
  puts "#{name}: #{count}"
end

p votes

votes = Hash.new
votes["Amber Graham"] = 1

p votes["Amber Graham"]
p votes["Brian Martin"]


votes = Hash.new(0)     #Create a new hash with a default object of "0"
votes["Amber Graham"] = 1

p votes["Amber Graham"]    #When we access a value that's been assigned to, we get that value back.
p votes["Brian Martin"]    #When we access a value that HASN'T been assigned to, we get the default object.


