class Student < ActiveRecord::Base
  after_create do |s|
    s.active = false
  end

  def to_s
    self.first_name + " " + self.last_name
  end
end