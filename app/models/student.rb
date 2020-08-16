class Student < ActiveRecord::Base
  def to_s
    self.first_name + " " + self.last_name
  end

  def active_inactive
    if self.active == false
      return "inactive"
    else
      return "active"
    end
  end

  def active_switch
    if self.active == false
      self.active = true
    else
      self.active = false
    end
    self.save
  end

end