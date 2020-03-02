class Student < ActiveRecord::Base
  def initialize(params)
    super
    if self.active != true
      self.active = false
    end
  end
  
  def to_s
    self.first_name + " " + self.last_name
  end
end