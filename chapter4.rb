class Employee

  attr_reader :name, :salary

  def name=(name)
    if name ==""
      raise "Name can't be blank!"
    end
    @name = name
  end

  def salary=(salary)
    if salary < 0
      raise "A salary of #{salary} isn't valid!"
    end
    @salary = salary
  end

  def initialize
    @name = "Anonymous"
    @salary = 0.0
  end

  def print_pay_stub
    puts "Name: #{@name}"
    pay_for_period = (@salary / 365.0) * 14#Calculate a 14-day portion of the employee 
    formatted_pay = format("%.2f", pay_for_period)#Get a string with the pay amount rounded to two decimal places.
    puts "Pay This period: $#{formatted_pay}"#print the formatted amount string
  end
end

#Creating new employee instances
amy = Employee.new
amy.name = "Amy Blake"
amy.salary = 50000

amy.print_pay_stub

employee = Employee.new
employee.name = "Jane Doe"
employee.salary = 50000
employee.print_pay_stub

result = format("Rounded to two decimal places: %0.2f", 3.14159265)
puts result

puts format("The %s cost %i cents each.","gumballs", 23)
puts format("That will be $%f please.", 0.23 * 5)

puts format("A string: %s", "hello")
puts format("An integer: %i", 15)
puts format("A float: %f", 3.1415)

puts format("$%f", 1917.8082191780823)


puts format("%12s | %s", "Product",  "Cost in Cents")
puts "-" * 35
puts format("%12s | %2i", "Stamps", 50)
puts format("%12s | %2i", "Paper Clips", 5)
puts format("%12s | %2i", "Tape", 5)

def test_format(format_string)
  print "Testing '#{format_string}': "
  puts format(format_string, 12.3456)
end


test_format "%7.3f"
test_format "%7.2f"
test_format "%7.1f"
test_format "%.1f"
test_format "%.2f"

puts format("$%.2f", 2514.2727367874069)
puts format("$%.2f", 1150.6849315068494)
puts format("$%.2f", 3068.4931506849316)








