class Student < ActiveRecord::Base
  def to_s
    self.first_name + " " + self.last_name
  end
  
   def activate_student
    @student = Student.find(params[:id])
    @student.active = true
   end 
   
   def deactivate_student
    @student = Student.find(params[:id])
    @student.active = false
   end 
   
end