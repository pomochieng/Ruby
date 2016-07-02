class OvenOffError < StandardError
end
class OvenEmptyError < StandardError
end


class SmallOven

  attr_accessor :contents

  def turn_on
    puts "Turning oven on."
    @state = "on"
  end
  def turn_off
    puts "Turning oven off."
    @state  = "off"
  end

  def bake
    unless @state == "on"
      raise OvenOffError, "You need to turn the oven on first!"
      #return "You need to turn the oven on the first!"
      #raise "You need to turn the oven on the first!"     #Raise an error if we attempt to bake while the oven is off.
    end
    if @contents == nil
      raise OvenOffError, "There is nothing in the oven!"
      #return "There's nothing in the oven!"
      #raise "There's nothing in the oven!"     #Raise an error if we attempt to bake while the oven is empty.
    end
    "golden-brown #{contents}"    #This line won't be reached if an error is raised!
  end

end


dinner = ['turkey', 'nil', 'pie']
oven = SmallOven.new
oven.turn_on
#oven.turn_off     #Accidentaly turn oven off
dinner.each do |item|
  begin
    oven.contents = item
    puts "Serving #{oven.bake}."
  #rescue => error   #Rescue any exceptions in the above two lines    #......Store the exception in a variable.
  rescue OvenEmptyError => error
    puts "Error: #{error.message}" #There's nothing in the oven!       #Print an Error message.   #....We ignore the messages passed to "raise" and use this one!
  rescue OvenEmptyError => error
    oven.turn_on  
  end
end


class MyError < StandardError
end

raise MyError, "oops!"



class PorridgeError < StandardError
end
class BeddingError < StandardError
end

def eat
  raise PorridgeError, "too hot"
end
def sleep
  raise BeddingError, "too soft"
end

begin
  eat
rescue BeddingError => error
  puts "This bed is #{error.message}!"
rescue PorridgeError => error
  puts "This porridge is #{error.message}!"
end













