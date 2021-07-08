class Student < ActiveRecord::Base

  def to_s
    "#{first_name} #{last_name}"
  end

  def status
    active ? 'active' : 'inactive'
  end

  def change_status
    self.active = (active ? false : true)
    save
  end

  def change_status_text
    active ? 'Deactivate' : 'Activate'
  end

end
