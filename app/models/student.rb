class Student < ActiveRecord::Base


  # @active = false
  def to_s
    self.first_name + " " + self.last_name
  end
  def display_active
    active ? "active" : "inactive"
  end
  # def is_active
  #   self.active ? "active" : "inactive"
  # end
end

# drop database
# call it active
# student to_s
