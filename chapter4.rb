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

  def print_pay_stub
    puts "Name: #{@name}"
    pay_for_period = (@salary / 365) * 14#Calculate a 4-day portion of the employee
    puts "Pay This period: $#{pay_for_period}"#print the amount paid
  end

end

#Creating new employee instances
amy = Employee.new
amy.name = "Amy Blake"
amy.salary = 50000

amy.print_pay_stub




