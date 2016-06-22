class Bird
  def talk
    puts "Chirp! Chrip!"
  end
  def move(destination)
    puts "Flying to the #{destination}."
  end
end

class Dog
  def talk
    puts "Bark!"
  end
  def move (destination)
    puts "Running to the #{destination}."
  end
end

class Cat
  def talk
    puts "Meow!"
  end
  def move (destination)
    puts "running to te #{destination}."
  end
end

bird = Bird.new
dog = Dog.new
cat = Cat.new

bird.move("tree")
dog.talk
bird.talk
cat.move("house")

class Blender
  def close_lid
    puts "Sealed tight!"
  end
  def blend (speed)
    puts "Spinning on #{speed} setting."
  end
end


blender = Blender.new
blender.close_lid
blender.blend("high")

class Dog
  def make_up_name
    @name = "Sandy"
  end

  def talk
    puts "#{@name} says Bark!"
  end

  def move(destination)
    puts "#{@name} runs to the #{destination}."
  end

  def make_up_age
    @age = 5
  end

  def report_age
    puts "#{@name} is 3{@age} years old."
  end
end


dog = Dog.new
dog.make_up_name
dog.move("yard")
dog.make_up_age
dog.report_age


class Dog

  def name=(new_value)
    @name = new_value
  end

  def name
    @name
  end

  def age=(new_value)
    @age = new_value
  end

  def report_age
    puts "#{@name} is #{@age} years old."
  end
end

fido = Dog.new
fido.name = "Fido"
fido.age = 2
rex = Dog.new
rex.name = "Rex"
rex.age = 3
fido.report_age
rex.report_age


