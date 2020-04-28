class Student < ActiveRecord::Base

  def to_s
    self.first_name + " " + self.last_name
  end
  def display_active
    active ? "active" : "inactive"
  end
end

# drop database
# call it active
# student to_s
