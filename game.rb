#number game
#created by : Peter
puts "Welcome to get my number"
 print "Enter your name"
 input = gets

 name = input.chomp
 
 puts "Welcome, #{input}"

 puts "First Line"

 puts "Second line", "third line", "fourth line"

 puts "First line\nSecond line\nThrid line"
 puts "\tindented line"


puts "\"It's Okay,\" he said."

puts 42.class
puts "hello".class
puts true.class



puts rand(100)
puts rand(100)

rand(100) + 1

#Store a random number for th eplayer to guess.
puts "i've got a random number between 1 and 100."
puts "Can you guess it?"
target = rand(100) + 1

#Track how many guesses the player has made.
num_guesses = 0

#Track whether the player has guessed correctly.
guessed_it = false

while num_guesses < 10 && guessed_it == false

puts "You've got #{10 - num_guesses} guesses left."
print "Make a guess: "
guess = gets.to_i

num_guesses += 1

#Compare the guess was target.
#Print the appropriate message.
if guess < target
  puts "Oops. Your guess was LOW."
elsif guess > target
  puts "Ooops. Your guess was HIGH."
elsif guess == target
  puts "Good Job, #{name}"
  puts "You guessed my number in #{num_guesses} guesses!"
  guessed_it = true
end

#If player didn't guess in time, show the target number.
Unless guessed_it
  puts "Sorry. You didn't get my number. (It was #{target}.)"
end

