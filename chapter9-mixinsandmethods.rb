module MyModule
  def my_method
    puts "hello from MyModule"
  end
end

class MyClass
  include MyModule
  def my_method
    puts "hello from MyClass"
  end

end

p MyClass.ancestors

MyClass.new.my_method







