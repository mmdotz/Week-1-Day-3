class Student
  CAMPUS = "ATX" #only exists in the class

  def initialize
    #calls method when .new is is instatiated
    @bed_time = "Didn't sleep yet"    #default ("initialized") value instead of returning nil
    @wakes_up = "Not yet"
  end

  def wakes_up
    @awake_time = Time.now
    puts "Went to bed at #{@bed_time}"
    "Wakes up at #{@awake_time}"
   end

  def sleep
    @bed_time = Time.now
    puts "Goes to bed @ #{@bed_time}"
  end  #bed_time disappears when it hits end

  def study
    puts "studies"
  end

end

VERSION = "1.1.1"

#create instance of class Student
jacob = Student.new

#call the method
jacob.study
jacob.sleep

VERSION #returns 1.1.1
#CAMPUS #returns error because the scope is wrong, need instance variable @
puts Student::CAMPUS #returns ATX

#instance variable exists inside the entire instance
#local variable exists inside the method
#cannot access instance variable by calling it eg: jacob.@bed_time => error

#instance variables that have not been set are nil!!!!!

jacob.wakes_up      #does not fill in bed_time because it wasn't called



class Person
  def initialize(name)        #this is never explicitly called
    @name = name
  end

  def get_name                #need method to get instance variable out of class
    @name.capitalize
  end

  def set_name(new_name)      #to change the name
    @name = new_name
end

person1 = Person.new("bob") #don't name the variable the argument - causes confusion
person2 = Person.new("jill")

puts person1.name     #=>no method!
puts person1.get_name   #=>bob
puts person1.set_name("ben")   #ben

student_records = Array.new
student_records.push(Person.new('ryan'))
student_records.push(Person.new('sam'))

puts student_records #=>array

student_records.each do |nstudent|     #=>each name on one line
  puts nstudent.get_name
end






