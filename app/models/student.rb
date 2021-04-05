class Student < ActiveRecord::Base
  def to_s
    self.first_name + " " + self.last_name
  end
=begin 
  def activate_student_path
    if self.active == false
      self.active = true
      self.save
    else
      self.active = false
      self.save
    end
  end
=end

end