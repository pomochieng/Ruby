class Steak
  include Comparable

  GRADE_SCORES = {"Prime" => 3, "Choice" => 2, "Select" => 1}

  attr_accessor :grade

  def > (other)
    GRADE_SCORES[grade] > GRADE_SCORES[other.grade]
  end

  def <=> (other)
    if GRADE_SCORES[self.grade] > GRADE_SCORES[other.grade]     #If this steak's grade is lower than the other steak's grade, return -1
      return -1
    elsif GRADE_SCORES[self.grade] == GRADE_SCORES[other.grade]     #If the grades are equal, return 0.
      return 0
    else
      return 1    #Otherwise, this steak's grade must be higher than the other steak's grade, so return 1.
    end
  end
end

prime = Steak.new
prime.grade = "Prime"
choice = Steak.new
choice.grade = "Choice"
select = Steak.new
select.grade = "Select"

puts "prime > choice: #{prime > choice}"
puts "prime < select: #{prime < select}"
puts "select == select: #{select == select}"
puts "select <= select: #{select <= select}"
puts "select >= choice: #{select >= choice}"
print "choice.between?(select, choice): "
puts choice.between?(select, prime)



  def > (other)
    grade_scores = {"Prime" => 3, "Choice" => 2, "Select" => 1}
    grade_scores[grade] > grade_scores[other.grade]
  end


first_steak = Steak.new
first_steak.grade = "Prime"
second_steak = Steak.new
second_steak.grade = "Choice"

if first_steak > second_steak
  puts "I'll take #{first_steak.inspect}."
end

puts first_steak <=> second_steak
puts second_steak <=> first_steak


grade_scores = {"Prime" => 3, "Choice" => 2, "Select" => 1}
puts grade_scores["Prime"]
puts grade_scores["Choice"]
puts grade_scores["Prime"] > grade_scores["Select"]


class MyClass
  MY_CONSTANT = 42
  def my_method
    puts MY_CONSTANT
  end
end

MyClass.new.my_method


GRADE_SCORES = {"Prime" => 3, "Choice" => 2, "Select" => 1}

def >(other)
  GRADE_SCORES[grade]  > GRADE_SCORES[other.grade]
end






