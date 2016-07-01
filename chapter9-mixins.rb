module MyModule
  def first_method
    puts "first_method called"
  end
  def second_method
    puts "second_method called"
  end
end


class MyClass
  include MyModule
end

my_object = MyClass.new
my_object.first_method
my_object.second_method


module Friendly
  def my_method
    puts "hello from Friendly"
  end
end

class ClassOne
  include Friendly
end

class ClassTwo
  include Friendly
end

ClassOne.new.my_method
ClassTwo.new.my_method

module Friendly
  def method_one
    puts "hello from Friendly"
  end
end

module Friendlier
  def method_two
    puts "hello from Friendlier!!"
  end
end

class MyClass
  include Friendly
  include Friendlier
end

my_object = MyClass.new
my_object.method_one
my_object.method_two

class MySuperclass
end

module MyModule
  def my_method
    puts "hello from MyModule"
  end
end

class MyClass < MySuperclass
  include MyModule
end


my_object = MyClass.new
my_object.my_method









