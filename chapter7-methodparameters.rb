def area(options)
  options[:length] * options[:width]
end

puts area({:length => 2, :width => 4})

def welcome (greeting: "Welcome", name: nil)
  puts "#{greeting}, #{name}!"
end

welcome(greeting: "Hello", name: "Amy")

my_arguments = {greeting: "Hello", name: "Amy"}
welcome(my_arguments)
welcome(name: "Amy")





