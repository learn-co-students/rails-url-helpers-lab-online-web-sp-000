class Student < ActiveRecord::Base
  def to_s
    self.first_name + " " + self.last_name
  end
  attribute :active, :boolean, default: false
end