require 'pry'

class Student < ActiveRecord::Base
  
  def to_s
    self.first_name + " " + self.last_name
  end
  
  def active_status
    if self.active == false
      "inactive"
    else
      "active"
    end
  end
end