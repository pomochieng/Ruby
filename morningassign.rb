#Morning Assignment
#Created by: Peter

puts "Greetings to The User Identified"
print "Enter your name"
input =  gets

input = input.chomp

puts "Hallo, #{input}"

#Generate a random number from 1-100 and Store
puts "I've got a random number between 1 and 100."
puts"Can you guess it?"
target = rand(100) + 1

num_guesses = 0

guessed_it = false

while num_guessed < 10 && guessed_it == false

  puts "You've got  #{10 - num_guesses} guesses left."
  print "Make a guess:"
  guess = gets.to

  num_guesses += 1

  

