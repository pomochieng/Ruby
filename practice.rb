class Person
  attr_accessor :name, :gender# 
  def move
    puts "#{@name} walks" #Method body
  end

  def talk(language)
    puts "Likes to talk in #{language}" #Method body
    puts "#{@name} is a #{@gender}"
  end
end

#create instance of the class
stellamaris = People.new
peter = People.new

#Calling methods on instances created above
peter.talk("french")
stellamaris.move
stellamaris.talk("Espanyol")

