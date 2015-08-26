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

jacob.wakes_up #does not fill in bed_time because it wasn't called
